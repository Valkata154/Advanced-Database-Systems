/** TASK 3 **/
/** SCRIPT FOR CREATING TYPES AND TABLES, PLUS ANY RELEVANT SCRIPTS/METHODS FOR THE DATABASE **/

/** TYPES **/

/** Name Type **/
CREATE TYPE tp_Name AS OBJECT 
(
	title VARCHAR2(5),
	firstname VARCHAR2(20), 
    surname VARCHAR2(20)
)FINAL;

/

/** Address Type **/
CREATE TYPE tp_Address AS OBJECT 
(
	street VARCHAR2(20), 
    city VARCHAR2(20), 
    postcode VARCHAR2(8)
)NOT FINAL;

/

/** Phone Type **/
CREATE TYPE tp_Phone AS OBJECT 
(
	phone_type VARCHAR2(20),
    phone_number VARCHAR2(20)  
)FINAL;

/

/** Nested Table of Phone Type **/
CREATE TYPE tp_Phone_Table AS TABLE OF tp_Phone;

/

/** Person Type **/
CREATE TYPE tp_Person AS OBJECT 
(
	fullname tp_Name,
    address tp_Address,
	ni_number VARCHAR2(6),
	phone_numbers tp_Phone_Table
)NOT FINAL;

/

/** Job Type **/
CREATE TYPE tp_Job AS OBJECT 
(
	id VARCHAR(6),
	position VARCHAR2(20),
	salary INTEGER
)FINAL;

/

/** Branch Subtype **/
CREATE TYPE tp_Branch UNDER tp_Address 
(
    id VARCHAR2(6), 
    phone_numbers tp_Phone_Table
)
    FINAL; 
	
/    

/** Account Type **/
CREATE TYPE tp_Account AS OBJECT
(
    account_number INTEGER, 
    account_type VARCHAR2(8), 
    balance INTEGER, 
	interest_rate VARCHAR2(8),
    branch_id REF tp_Branch,  
    free_overdraft_limit INTEGER, 
    open_date DATE
)
    FINAL; 
	
/    

/** Customer Subtype **/
CREATE TYPE tp_Customer UNDER tp_Person 
(
    id VARCHAR2(6)
)
    FINAL;
/  

/** Employee Subtype **/
CREATE TYPE tp_Employee UNDER tp_Person 
(
    id VARCHAR2(6),
	job_position REF tp_Job,
    branch_id REF tp_Branch, 
	join_date DATE,
    supervisor_id REF tp_Employee
)
    FINAL;
	
/ 

/** TABLES **/

/** Customer Table **/
CREATE TABLE tb_Customer OF tp_Customer
(
	CONSTRAINT customer_id_const PRIMARY KEY(id),
	CONSTRAINT fullname_const CHECK(fullname IS NOT NULL),
	CONSTRAINT street_const CHECK(address.street IS NOT NULL),
    CONSTRAINT city_const CHECK(address.city IS NOT NULL),
    CONSTRAINT postcode_const CHECK(address.postcode IS NOT NULL),
	CONSTRAINT ni_number_const UNIQUE (ni_number),
	CONSTRAINT phones_check CHECK(phone_numbers IS NOT NULL)
)   
NESTED TABLE phone_numbers STORE AS customer_phones_table;

/

/** Job Table **/
CREATE TABLE tb_Job OF tp_Job
(
    CONSTRAINT id_const PRIMARY KEY (id), 
    CONSTRAINT position_const CHECK (position IS NOT NULL),
    CONSTRAINT salary_const CHECK (salary IS NOT NULL)
); 

/

/** Branch Table **/
CREATE TABLE tb_Branch OF tp_Branch 
(
    CONSTRAINT id_const_branch PRIMARY KEY(id), 
    CONSTRAINT street_const_branch CHECK(street IS NOT NULL),
    CONSTRAINT city_const_branch CHECK(city IS NOT NULL),
    CONSTRAINT postcode_const_branch CHECK(postcode IS NOT NULL),
    CONSTRAINT phones_check_branch CHECK(phone_numbers IS NOT NULL)
)   NESTED TABLE phone_numbers STORE AS branch_phones_table;   

/

/** Employee Table **/
CREATE TABLE tb_Employee OF tp_Employee 
(
    CONSTRAINT id_const_employee PRIMARY KEY (id), 
	CONSTRAINT job_position_const CHECK (job_position IS NOT NULL),
	CONSTRAINT fullname_const_employee CHECK(fullname IS NOT NULL),
	CONSTRAINT street_const_employee CHECK(address.street IS NOT NULL),
    CONSTRAINT city_const_employee CHECK(address.city IS NOT NULL),
    CONSTRAINT postcode_const_employee CHECK(address.postcode IS NOT NULL),
	CONSTRAINT ni_number_const_employee UNIQUE (ni_number),
	CONSTRAINT phones_const_employee CHECK(phone_numbers IS NOT NULL),
	CONSTRAINT join_date_const CHECK (join_date IS NOT NULL), 
	CONSTRAINT branch_id_const_employee CHECK(branch_id IS NOT NULL)
)   NESTED TABLE phone_numbers STORE AS employees_phones_table; 

/

/** Account Table **/
CREATE TABLE tb_Account OF tp_Account 
(
    CONSTRAINT account_number_const PRIMARY KEY(account_number), 
    CONSTRAINT account_type_const CHECK(account_type IN ('Current', 'Savings')), 
    CONSTRAINT branch_id_const CHECK (branch_id IS NOT NULL), 
    CONSTRAINT open_date_const CHECK (open_date IS NOT NULL),
    CONSTRAINT free_overdraft_limit_const CHECK (free_overdraft_limit IS NOT NULL),
    CONSTRAINT interest_rate_const CHECK (interest_rate IS NOT NULL),
    CONSTRAINT balance_const CHECK (balance IS NOT NULL)
);

/

/** Customer Account Table **/
CREATE TABLE tb_Customer_Account 
(
    id REF tp_Customer SCOPE IS tb_Customer, 
    account_number REF tp_Account SCOPE IS tb_Account
); 

/** METHODS **/

/** PrintName, PrintAddress and PrintPhoneNumbers methods for Person Type **/
ALTER TYPE tp_Person
	ADD MEMBER FUNCTION PrintName RETURN STRING,
	ADD MEMBER FUNCTION PrintAddress RETURN STRING,
	ADD MEMBER FUNCTION PrintPhoneNumbers RETURN STRING CASCADE; 
/

CREATE OR REPLACE TYPE BODY tp_Person AS 
/** Print Name**/
MEMBER FUNCTION PrintName RETURN STRING IS 
    BEGIN
        RETURN (fullname.title || '. ' || fullname.firstname || ' ' || fullname.surname);
    END PrintName; 
	
/** Print Address**/
MEMBER FUNCTION PrintAddress RETURN STRING IS 
    BEGIN
        RETURN (address.street || ', ' || address.city || ', ' || address.postcode);
    END PrintAddress; 

/** Print Phone Numbers**/
MEMBER FUNCTION PrintPhoneNumbers RETURN STRING IS
	phone_numbers VARCHAR2(250) := '';
	BEGIN
		FOR i IN self.phone_numbers.FIRST .. self.phone_numbers.LAST
		LOOP
			IF (i NOT LIKE self.phone_numbers.LAST) THEN
                phone_numbers := (phone_numbers || ' ' || self.phone_numbers(i).phone_number || ',');
            ELSE
                phone_numbers := (phone_numbers || ' ' || self.phone_numbers(i).phone_number);
            END IF;
		END LOOP;
		RETURN (phone_numbers);
	END PrintPhoneNumbers;
END; 

/ 

/** PrintAddress methods for Address (to be used for Branch)**/
ALTER TYPE tp_Address
ADD MEMBER FUNCTION PrintAddress RETURN STRING CASCADE;

/

CREATE OR REPLACE TYPE BODY tp_Address AS
    MEMBER FUNCTION PrintAddress RETURN STRING IS
        BEGIN
            RETURN (street || ', ' || city  || ', ' || postcode);
        END PrintAddress;
END;
/

/** Method to award employees with medals, to count years at the company and to count supervised number **/
ALTER TYPE tp_Employee
ADD MEMBER FUNCTION Award RETURN STRING CASCADE;

CREATE OR REPLACE TYPE BODY tp_Employee AS 
MEMBER FUNCTION Award RETURN STRING IS
    award varchar2(20);  
	supervisedCount number;
    yearsCount number;
    BEGIN
		/** Count Years **/
        yearsCount := TRUNC(((SYSDATE - join_date)/365),1);
		
		/** Count Supervised employees**/
		SELECT COUNT(supervisor_id) INTO supervisedCount
		FROM tb_Employee e
		WHERE self.id = DEREF(e.supervisor_id).id;
        
        IF yearsCount > 10 AND supervisedCount > 8 THEN
            award := 'Gold Medal';
            ELSIF yearsCount > 8 AND supervisedCount > 5 THEN
            award := 'Silver Medal';
            ELSIF yearsCount > 4 THEN
            award := 'Bronze Medal';
            ELSE
            award := 'No Medal Awarded';
        END IF;        
        RETURN award;
    END Award;
END;

/


