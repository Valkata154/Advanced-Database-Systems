/** TASK 4 **/
/** SCRIPT WITH SQL STATEMENTS TO ANSWER THE TASKS **/

/**
Question A
Find employees whose first name includes the string “st” and live in
Glasgow, displaying their full names.
**/

SELECT  e.PrintName() AS "FullName",
	e.address.city AS "City"
FROM 	tb_Employee e 
WHERE 	UPPER(e.fullname.firstname) LIKE '%ST%'
AND 	e.address.city = 'Glasgow';

/**
Question B
Find the number of saving accounts at each branch, displaying the
number and the branch’s address.
**/

SELECT    
    a.branch_id.id AS "Branch",
    a.branch_id.PrintAddress() AS "Address",
    count(a.account_type) AS "Accounts Count"
FROM 
    tb_Account a
WHERE
    account_type LIKE 'Savings'
GROUP BY
    a.account_type, a.branch_id.PrintAddress(),  a.branch_id.id
ORDER BY 
    count(a.account_type) DESC; 
	
/**
Question C
At each branch, find customers who have the highest balance in their
savings account, displaying the branch address, their names, and the
balance.
**/

SELECT 
	c1.account_number.branch_id.PrintAddress() AS "Branch Address", 
	c1.id.PrintName() AS "Name",
	c1.account_number.balance AS "Balance"       
FROM ( 
	SELECT 
		c.account_number.branch_id.id AS branch, 
		c.account_number.account_type AS account_type, 
		MAX (c.account_number.balance) AS highest
		FROM 
			tb_Customer_Account c
		WHERE 
			c.account_number.account_type LIKE 'Savings' 
		GROUP BY c.account_number.branch_id.id, c.account_number.account_type
	) b
JOIN tb_Customer_Account c1 
ON c1.account_number.account_type LIKE b.account_type 
AND c1.account_number.balance LIKE b.highest
AND c1.account_number.branch_id.id LIKE b.branch
LEFT JOIN tb_Customer_Account c2
ON c2.id.id = c1.id.id
AND c2.account_number.account_type LIKE 'Basic'
ORDER BY c1.account_number.balance DESC;

/** 
Question D
Find employees who are supervised by a manager and have accounts in
the bank, displaying the branch address that the employee works in and
the branch address that the account is opened with.
**/

SELECT     
    e.PrintName()   AS "Employee Name", 
    c.account_number.account_number AS "Account Number",
    e.branch_id.PrintAddress() AS "Working Branch Address",
    c.account_number.branch_id.PrintAddress() AS "Account Branch Address"
FROM 
    tb_Employee e, tb_Customer_Account c
WHERE 
    c.id.PrintName() = e.PrintName()
AND 
    e.supervisor_id.job_position.position LIKE 'Manager';

/** 
Question E
At each branch, find customers who have the highest free overdraft
limit in all current accounts that are joint accounts, displaying the
branch’s ID, the customer’s full names, the free overdraft limit in
his/her current account.
**/

SELECT 
    c1.account_number.branch_id.id AS "Branch ID",
    c1.account_number.account_number AS "Account Number",
	c1.id.PrintName() AS "FullName",
    c1.account_number.free_overdraft_limit as "Free OD Limit"
FROM ( 
	SELECT 
    c.account_number.account_number AS AccNumber,
    COUNT(c.account_number.account_number)
    FROM ( 
        SELECT c.account_number.branch_id.id AS id, 
            MAX(c.account_number.free_overdraft_limit) AS max
            FROM tb_Customer_Account c 
            GROUP BY c.account_number.branch_id.id
        ) max, tb_Customer_Account c
    WHERE c.account_number.free_overdraft_limit = max.max AND
    c.account_number.branch_id.id = max.id
    AND c.account_number.account_type LIKE 'Current'
    HAVING COUNT(c.account_number.account_number) > 1
    GROUP BY c.account_number.account_number
	) b
JOIN tb_Customer_Account c1 
ON c1.account_number.account_number LIKE b.AccNumber;

/** 
Question F
Find customers who have more than one mobile, and at least one of the
numbers starts with 0760, displaying the customer’s full name and
mobile numbers. COLLECTIONS must be used.
**/

SELECT c.id AS "Customer ID",
c.PrintName() AS "Customer Name",
c.PrintPhoneNumbers() AS "Phone Numbers"
FROM tb_Customer c, TABLE(c.phone_numbers) t, (
						SELECT c.id, COUNT(t.phone_type)
						FROM tb_Customer c, table(c.phone_numbers) t 
						WHERE t.phone_type LIKE 'Mobile'
						HAVING COUNT(t.phone_type) > 1
						GROUP BY c.id
					 )  mobiles
WHERE c.id = mobiles.id 
AND t.phone_number LIKE '0760%'
ORDER BY c.id;

/** 
Question G
Find the number of employees who are supervised by Mr Smith, who
is supervised by Mrs Jones. REFERENCES must be used.
**/

SELECT COUNT(e.id) AS "Number of employees"
        FROM tb_Employee e
        WHERE e.supervisor_id.fullname.surname LIKE 'Smith' 
        AND e.supervisor_id.supervisor_id.fullname.surname LIKE 'Jones'
        AND e.supervisor_id.fullname.title LIKE 'Mr'
        AND e.supervisor_id.supervisor_id.fullname.title LIKE 'Mrs';

/** 
Question H
Award employees at the end of a year: gold medals for employees who
have been working at the bank for more than 10 years and supervised
more than 8 staff; silver medals for employees who have been working
at the bank for more than 8 years and supervised more than 5 staff;
bronze medals for employees who have been working at the bank for
more than 4 years. Displaying winners’ names and Medal awarded
(only displaying those who have been awarded). METHODS must be
used.
**/

SELECT
        e.PrintName() AS "Employee Name",
        e.Award() AS "Employee Award"
        FROM tb_Employee e
        WHERE e.Award() != 'No Medal Awarded';
