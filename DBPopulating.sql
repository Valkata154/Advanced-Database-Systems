/** TASK 3 **/
/** SCRIPT FOR POPULATING THE DATABASE WITH TEST DATA (AT LEAST 20 ROWS PER TABLE) **/

/** BRANCH TABLE **/

INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'A1',
    'Gorgie St.', 
    'Edinburgh', 
    'EH14 1BF',  
    tp_Phone_Table(tp_Phone('Branch','0895667788')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'A2',
    'George Square', 
    'Glasgow', 
    'G2 1DS',  
    tp_Phone_Table(tp_Phone('Branch','0895667788')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'A3',
    'Quenby Street', 
    'Manchester', 
    'M15 4HW',  
    tp_Phone_Table(tp_Phone('Branch','0895667788')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'A4',
    'Berkeley Square', 
    'London', 
    'W1J 6EN',  
    tp_Phone_Table(tp_Phone('Branch','0895667788')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'B1',
    'Dublin Street', 
    'Edinburgh', 
    'EH3 6NT',  
    tp_Phone_Table(tp_Phone('Branch','0895556677')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'B2',
    '19 Glamis Road', 
    'Glasgow', 
    'G31 4BJ',  
    tp_Phone_Table(tp_Phone('Branch','0895556677')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'B3',
    'Saltergate Mews', 
    'Manchester', 
    'M5 4AD',  
    tp_Phone_Table(tp_Phone('Branch','0895556677')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'B4',
    '43 Chiltern Street', 
    'London', 
    'W1U 6LU',  
    tp_Phone_Table(tp_Phone('Branch','0895556677')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'C1',
    'The Quilts', 
    'Edinburgh', 
    'EH6 5RP',  
    tp_Phone_Table(tp_Phone('Branch','0895445566')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'C2',
    'Rosemount Close', 
    'Glasgow', 
    'G21 2FF',  
    tp_Phone_Table(tp_Phone('Branch','0895445566')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'C3',
    'Lockett Gardens', 
    'Manchester', 
    'M3 6BJ',  
    tp_Phone_Table(tp_Phone('Branch','0895445566')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'C4',
    'Chester Cottages', 
    'London', 
    'SW1W 8HG',  
    tp_Phone_Table(tp_Phone('Branch','0895445566')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'D1',
    'Kinellan Road', 
    'Edinburgh', 
    'EH12 6ES',  
    tp_Phone_Table(tp_Phone('Branch','0895334455')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'D2',
    '123 Fotheringay Road', 
    'Glasgow', 
    'G41 4LG',  
    tp_Phone_Table(tp_Phone('Branch','0895334455')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'D3',
    '7 Medway Close', 
    'Manchester', 
    'M5 5LD',  
    tp_Phone_Table(tp_Phone('Branch','0895334455')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'D4',
    'Phillipp Street', 
    'London', 
    'N1 5PE',  
    tp_Phone_Table(tp_Phone('Branch','0895334455')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'E1',
    'Meadowfield Avenue', 
    'Edinburgh', 
    'EH8 7NW',  
    tp_Phone_Table(tp_Phone('Branch','0895223344')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'E2',
    'Firpark Street', 
    'Glasgow', 
    'G31 2AA',  
    tp_Phone_Table(tp_Phone('Branch','0895223344')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'E3',
    'Old Trafford', 
    'Manchester', 
    'M16 9LT',  
    tp_Phone_Table(tp_Phone('Branch','0895223344')));
	
INSERT INTO tb_Branch (id, street, city, postcode, phone_numbers) VALUES( 
	'E4',
    'Buckley Court', 
    'London', 
    'SE1 3FQ',  
    tp_Phone_Table(tp_Phone('Branch','0895223344')));
	
/** JOB TABLE **/

INSERT INTO tb_Job (id, position, salary) VALUES (
    '001', 
    'Head', 
    150000); 
    
INSERT INTO tb_Job (id, position, salary) VALUES (
    '002', 
    'Manager', 
    100000);   
    
INSERT INTO tb_Job (id, position, salary) VALUES (
    '003', 
    'Project Leader', 
    75000);     

INSERT INTO tb_Job (id, position, salary) VALUES (
    '004', 
    'Accountant', 
    50000); 
    
INSERT INTO tb_Job (id, position, salary) VALUES (
    '005', 
    'Cashier', 
    20000); 
    
/** CUSTOMER TABLE **/

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'101',
    tp_Name(
        'Mr', 
        'Kris',
        'Stephens'), 
    tp_Address(
        '17 The Avenue', 
        'SLOUGH', 
        'SL71 3BU'), 
    '1001',
    tp_Phone_Table(tp_Phone('Mobile','0760 9496 0052'), tp_Phone('Home','0131 9496 0052'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'102',
    tp_Name(
        'Ms', 
        'Lorraine',
        'Earls'), 
    tp_Address(
        '32 Green Lane', 
        'REDHILL', 
        'RH27 2DC'), 
    '1002',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0050'), tp_Phone('Home','0131 9496 0051'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'103',
    tp_Name(
        'Mr', 
        'Prudence',
        'Palmer'), 
    tp_Address(
        '27 New Street', 
        'BRIGHTON', 
        'BN83 0TZ'), 
    '1003',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0048'), tp_Phone('Home','0131 9496 0049'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'104',
    tp_Name(
        'Mr', 
        'Brett',
        'Moors'), 
    tp_Address(
        '86 Queen Street', 
        'INVERNESS', 
        'IV50 1DT'), 
    '1004',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0044'), tp_Phone('Home','0131 9496 0045'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'105',
    tp_Name(
        'Ms', 
        'Caiden',
        'Thorpe'), 
    tp_Address(
        '3 Albert Road', 
        'NORTHAMPTON', 
        'NN31 2YA'), 
    '1005',
    tp_Phone_Table(tp_Phone('Mobile','0760 9496 0041'), tp_Phone('Mobile','0131 9496 0042'), tp_Phone('Home','0131 9496 0043'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'106',
    tp_Name(
        'Ms', 
        'Karissa',
        'Quincy'), 
    tp_Address(
        '59 Grove Road', 
        'SUNDERLAND', 
        'SR26 4EN'), 
    '1006',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0038'), tp_Phone('Mobile','0131 9496 0039'), tp_Phone('Home','0131 9496 0040'))
);


INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'107',
    tp_Name(
        'Ms', 
        'Shawna',
        'Donalds'), 
    tp_Address(
        '16 George Street', 
        'KIRKCALDY', 
        'KY49 4ZP'), 
    '1007',
    tp_Phone_Table(tp_Phone('Mobile','0760 9496 0035'), tp_Phone('Mobile','0131 9496 0036'), tp_Phone('Home','0131 9496 0037'))
);


INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'108',
    tp_Name(
        'Mr', 
        'Zackery',
        'Shakespeare'), 
    tp_Address(
        '70 Victoria Road', 
        'PRESTON', 
        'PR85 3XI'), 
    '1008',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0033'),  tp_Phone('Home','0131 9496 0034'))
);


INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'109',
    tp_Name(
        'Mr', 
        'Pace',
        'Horn'), 
    tp_Address(
        '21 New Road', 
        'NEWCASTLE UPON TYNE', 
        'NE58 3HS'), 
    '1009',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0031'), tp_Phone('Home','0131 9496 0032'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'110',
    tp_Name(
        'Ms', 
        'Katherine',
        'Summers'), 
    tp_Address(
        '92 Manor Road', 
        'SOUTHAMPTON', 
        'SO52 9GE'), 
    '1010',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0029'), tp_Phone('Home','0131 9496 0030'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'111',
    tp_Name(
        'Ms', 
        'Janeka',
        'Ackerman'), 
    tp_Address(
        'St. Road', 
        'SALISBURY', 
        'SP3 9CB'), 
    '1011',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0027'), tp_Phone('Home','0131 9496 0028'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'112',
    tp_Name(
        'Mr', 
        'Duana',
        'Morse'), 
    tp_Address(
        '29 The Grove', 
        'BOURNEMOUTH', 
        'BH93 3MR'), 
    '1012',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0026'), tp_Phone('Home','0131 9496 0027'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'113',
    tp_Name(
        'Mrs', 
        'Susan',
        'Clarkson'), 
    tp_Address(
        '46 The Avenue', 
        'COLCHESTER', 
        'CO64 2MJ'), 
    '1013',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0024'), tp_Phone('Home','0131 9496 0025'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'114',
    tp_Name(
        'Mrs', 
        'Zella',
        'George'), 
    tp_Address(
        '30 Queen Street', 
        'BATH', 
        'BA96 6VU'), 
    '1014',
    tp_Phone_Table(tp_Phone('Mobile','0760 9496 0022'), tp_Phone('Mobile','0131 9496 0022'), tp_Phone('Home','0131 9496 0023'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'115',
    tp_Name(
        'Mr', 
        'Dutch',
        'Bryan'), 
    tp_Address(
        '84 Albert Road', 
        'KILMARNOCK', 
        'KA48 8XR'), 
    '1015',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0019'), tp_Phone('Mobile','0131 9496 0020'), tp_Phone('Home','0131 9496 0021'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'116',
    tp_Name(
        'Mrs', 
        'Philippa',
        'Tollemache'), 
    tp_Address(
        '60 North Street', 
        'CREWE', 
        'CW53 2VY'), 
    '1016',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0016'), tp_Phone('Mobile','0131 9496 0017'), tp_Phone('Home','0131 9496 0018'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'117',
    tp_Name(
        'Mrs', 
        'Caelie',
        'Best'), 
    tp_Address(
        '97 George Street', 
        'STOCKPORT', 
        'SK3 3ZR'), 
    '1017',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0011'), tp_Phone('Mobile','0131 9496 0010'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'118',
    tp_Name(
        'Mr', 
        'Earnest',
        'Harlan'), 
    tp_Address(
        '70 King Street', 
        'SOUTHEND-ON-SEA', 
        'SS37 8FA'), 
    '1018',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0013'), tp_Phone('Mobile','0131 9496 0012'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'119',
    tp_Name(
        'Mrs', 
        'Marigold',
        'Bullock'), 
    tp_Address(
        '4 The Grove', 
        'CROYDON', 
        'CR97 9FB'), 
    '1019',
    tp_Phone_Table(tp_Phone('Mobile','0760 9496 0015'), tp_Phone('Home','0131 9496 0014'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'120',
    tp_Name(
        'Mr', 
        'Kamryn',
        'Grover'), 
    tp_Address(
        '607 Windsor Road', 
        'KIRKWALL', 
        'KW97 9KC'), 
    '1020',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 1264'), tp_Phone('Mobile','0760 9496 6364'), tp_Phone('Home','0131 9236 0164'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'121',
    tp_Name(
        'Mrs', 
        'Sherilyn',
        'Cooke'), 
    tp_Address(
        '25 Grange Road', 
        'CARDIFF', 
        'CF25 9PF'), 
    '1021',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0965'), tp_Phone('Mobile','0131 9496 0234'), tp_Phone('Home','0131 9496 2849'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'122',
    tp_Name(
        'Mrs', 
        'Francis',
        'Blakesley'), 
    tp_Address(
        '81 Park Avenue', 
        'CLEVELAND', 
        'TS67 5XJ'), 
    '1022',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0234'), tp_Phone('Home','0131 9496 1264'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'123',
    tp_Name(
        'Mr', 
        'Ozzie',
        'Acker'), 
    tp_Address(
        '59 Victoria Road', 
        'DARLINGTON', 
        'DL99 2JX'), 
    '1023',
    tp_Phone_Table(tp_Phone('Mobile','0131 9346 0164'), tp_Phone('Home','00131 9556 0164'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'124',
    tp_Name(
        'Mr', 
        'Moreen',
        'Winslow'), 
    tp_Address(
        '36 The Drive', 
        'DURHAM', 
        'DH52 3PF'), 
    '1024',
    tp_Phone_Table(tp_Phone('Mobile','0131 3496 0164'), tp_Phone('Mobile','0131 4496 0164'), tp_Phone('Home','0131 5496 0164'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'125',
    tp_Name(
        'Mr', 
        'Kelvin',
        'Younge'), 
    tp_Address(
        '33 Queensway', 
        'NORTHAMPTON', 
        'NN93 5VI'), 
    '1025',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0234'), tp_Phone('Home','0131 9436 0164'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'126',
    tp_Name(
        'Mr', 
        'Rollo',
        'Banks'), 
    tp_Address(
        '17 Victoria Road', 
        'EXETER', 
        'EX50 2CU'), 
    '1026',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0104'), tp_Phone('Home','0131 9493 0164'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'127',
    tp_Name(
        'Mrs', 
        'Poppy',
        'Walsh'), 
    tp_Address(
        '56 Park Lane', 
        'KILMARNOCK', 
        'KA46 5CQ'), 
    '1027',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0167'), tp_Phone('Mobile','0131 9496 0168'), tp_Phone('Home','0131 9496 01649'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'128',
    tp_Name(
        'Mrs', 
        'Zena',
        'Wade'), 
    tp_Address(
        '6 Queen Street', 
        'MANCHESTER', 
        'M77 2KY'), 
    '1028',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0165'), tp_Phone('Home','0131 9496 0166'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'129',
    tp_Name(
        'Mr', 
        'Lally',
        'Stainthorpe'), 
    tp_Address(
        '9664 The Crescent', 
        'PERTH', 
        'PH56 2HO'), 
    '1029',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0163'), tp_Phone('Home','0131 9496 0164'))
);

INSERT INTO tb_Customer (id, fullname, address, ni_number, phone_numbers) VALUES ( 
	'130',
    tp_Name(
        'Mr', 
        'Roxie',
        'Jacobson'), 
    tp_Address(
        '43 Springfield Road', 
        'KILMARNOCK', 
        'KA29 0XT'), 
    '1030',
    tp_Phone_Table(tp_Phone('Mobile','0131 9496 0160'), tp_Phone('Mobile','0131 9496 0161'), tp_Phone('Home','0131 9496 0162'))
);

/** ACCOUNT TABLE **/

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111111,
    'Savings', 
    2385, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A1'), 
    1000,
    '11-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111112,
    'Current', 
    4382, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A1'), 
    1000,
    '12-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111113,
    'Savings', 
    5367, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A1'), 
    500,
    '13-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111114,
    'Current', 
    2364, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A1'), 
    500,
    '14-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111115,
    'Savings', 
    3445, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A2'), 
    200,
    '15-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111116,
    'Current', 
    5456, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A2'), 
    200,
    '16-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111117,
    'Savings', 
    3745, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A2'), 
    0,
    '17-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111118,
    'Current', 
    3634, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A2'), 
    0,
    '18-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111119,
    'Savings', 
    1263, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A3'), 
    0,
    '19-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111120,
    'Current', 
    2554, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A3'), 
    0,
    '20-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111121,
    'Savings', 
    4644, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A3'), 
    200,
    '21-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111122,
    'Current', 
    3675, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A3'), 
    200,
    '22-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111123,
    'Savings', 
    4654, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A4'), 
    500,
    '23-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111124,
    'Current', 
    4675, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A4'), 
    500,
    '24-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111125,
    'Savings', 
    2368, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A4'), 
    1000,
    '25-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111126,
    'Current', 
    3674, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'A4'), 
    1000,
    '26-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111127,
    'Savings', 
    2633, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B1'), 
    1000,
    '27-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111128,
    'Current', 
    2463, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B1'), 
    1000,
    '28-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111129,
    'Savings', 
    1236, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B1'), 
    500,
    '29-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111130,
    'Current', 
    2367, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B1'), 
    500,
    '30-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111131,
    'Savings', 
    2543, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B2'), 
    200,
    '31-Mar-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111132,
    'Current', 
    1246, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B2'), 
    200,
    '01-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111133,
    'Savings', 
    7424, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B2'), 
    0,
    '02-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111134,
    'Current', 
    3753, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B2'), 
    0,
    '03-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111135,
    'Current', 
    4695, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B3'), 
    0,
    '04-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111136,
    'Current', 
    3678, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B3'), 
    0,
    '05-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111137,
    'Savings', 
    2965, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B3'), 
    200,
    '06-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    111111138,
    'Current', 
    6732, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B3'), 
    200,
    '07-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111139,
    'Savings', 
    2657, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B4'), 
    500,
    '08-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111140,
    'Current', 
    1742, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B4'), 
    500,
    '09-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111141,
    'Savings', 
    163, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B4'), 
    1000,
    '10-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111142,
    'Current', 
    1653, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B4'), 
    1000,
    '11-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111143,
    'Savings', 
    4213, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'B4'), 
    0,
    '12-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111144,
    'Current', 
    135, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C1'), 
    500,
    '13-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111145,
    'Savings', 
    2576, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C1'), 
    500,
    '14-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111146,
    'Savings', 
    8434, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C1'), 
    0,
    '15-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111147,
    'Current', 
    7426, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C1'), 
    0,
    '16-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111148,
    'Savings', 
    4795, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C2'), 
    200,
    '17-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111149,
    'Savings', 
    6325, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C2'), 
    500,
    '18-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111150,
    'Current', 
    5832, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C2'), 
    1000,
    '19-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111151,
    'Savings', 
    3785, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C2'), 
    1000,
    '20-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111152,
    'Current', 
    2748, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C3'), 
    500,
    '21-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111153,
    'Savings', 
    2584, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C3'), 
    500,
    '22-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111154,
    'Current', 
    1484, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C3'), 
    1000,
    '23-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111155,
    'Savings', 
    3726, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C3'), 
    1000,
    '24-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111156,
    'Current', 
    2897, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C4'), 
    200,
    '25-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111157,
    'Savings', 
    2785, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C4'), 
    200,
    '26-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111158,
    'Savings', 
    4366, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C4'), 
    200,
    '27-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111159,
    'Current', 
    122, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'C4'), 
    500,
    '28-Feb-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111160,
    'Savings', 
    2360, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D1'), 
    500,
    '01-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111161,
    'Current', 
    2020, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D1'), 
    0,
    '02-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111162,
    'Savings', 
    2080, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D1'), 
    200,
    '03-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111163,
    'Current', 
    1006, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D1'), 
    500,
    '04-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111164,
    'Savings', 
    7006, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D2'), 
    200,
    '05-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111165,
    'Current', 
    3200, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D2'), 
    500,
    '06-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111166,
    'Savings', 
    2800, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D2'), 
    1000,
    '07-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111167,
    'Current', 
    2500, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D2'), 
    500,
    '08-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111168,
    'Savings', 
    1760, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D3'), 
    1000,
    '09-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111169,
    'Current', 
    1300, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D3'), 
    1000,
    '10-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111170,
    'Savings', 
    870, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D3'), 
    200,
    '11-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111171,
    'Current', 
    2340, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D3'), 
    200,
    '12-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111172,
    'Savings', 
    3600, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D4'), 
    200,
    '13-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111173,
    'Current', 
    4333, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D4'), 
    500,
    '14-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111174,
    'Savings', 
    3560, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D4'), 
    500,
    '15-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111175,
    'Savings', 
    4300, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'D4'), 
    1000,
    '16-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111176,
    'Savings', 
    240, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E1'), 
    1000,
    '17-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111177,
    'Current', 
    750, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E1'), 
    0,
    '18-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111178,
    'Savings', 
    4500, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E1'), 
    0,
    '19-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111179,
    'Current', 
    8050, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E1'), 
    200,
    '20-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111180,
    'Savings', 
    6700, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E2'), 
    200,
    '21-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111181,
    'Savings', 
    100, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E2'), 
    500,
    '22-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111182,
    'Savings', 
    3760, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E2'), 
    1000,
    '23-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111183,
    'Savings', 
    2544, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E2'), 
    500,
    '24-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111184,
    'Current', 
    1556, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E3'), 
    200,
    '25-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111185,
    'Savings', 
    1200, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E3'), 
    200,
    '26-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111186,
    'Savings', 
    470, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E3'), 
    500,
    '27-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111187,
    'Current', 
    140, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E3'), 
    1000,
    '31-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111188,
    'Savings', 
    6890, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E4'), 
    500,
    '27-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111189,
    'Savings', 
    5670, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E4'), 
    200,
    '28-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111190,
    'Savings', 
    2355, 
    '0.02', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E4'), 
    500,
    '29-Jan-2020'
);

INSERT INTO tb_Account (account_number, account_type, balance, interest_rate, branch_id, free_overdraft_limit, open_date) VALUES (
    11111191,
    'Current', 
    1500, 
    '0.01', 
	(select ref(b) FROM tb_Branch b WHERE b.id = 'E4'), 
    1000,
    '30-Jan-2020'
);

/** EMPLOYEE TABLE **/

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Alexandur', 'Petrov'),
    tp_Address(
        'Street1', 
        'City1',
        'Ps1'),
    '101',
    tp_Phone_Table(tp_Phone('Mobile','07601222222'), tp_Phone('Home','01111111158')),
    1, 
    '07-Mar-2008', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'C3'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Head'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 1)
);    

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Stoyan', 'Hibbert'),
    tp_Address(
        '16 John Wood St', 
        'Glasgow',
        'PA14 5HU'),
    '102',
    tp_Phone_Table(tp_Phone('Mobile','07601222223'), tp_Phone('Home','01111111157')),
    2, 
    '07-Mar-2003', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'B2'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Manager'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 1)
);   

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Ms', 'Inaya', 'Drake'),
    tp_Address(
        'Street3', 
        'City3',
        'Ps3'),
    '103',
    tp_Phone_Table(tp_Phone('Mobile','07601222224'), tp_Phone('Home','01111111156')),
    3, 
    '07-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'B2'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Project Leader'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 2)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Ms', 'Cadi', 'Soto'),
    tp_Address(
        'Street4', 
        'City4',
        'Ps4'),
    '104',
    tp_Phone_Table(tp_Phone('Mobile','07601222225'), tp_Phone('Home','01111111155')),
    4, 
    '07-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'A1'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Accountant'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 2)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES (  
    tp_Name(
        'Ms', 'Valeria', 'Vladimirovna'),
    tp_Address(
        'Street5', 
        'City5',
        'Ps5'),
    '105',
    tp_Phone_Table(tp_Phone('Mobile','07601222226'), tp_Phone('Home','01111111154')),
    5, 
    '07-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'A1'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Cashier'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 2)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Ms', 'Polina', 'Arkadii'),
    tp_Address(
        'Street6', 
        'City6',
        'Ps6'),
    '106',
    tp_Phone_Table(tp_Phone('Mobile','07601222227'), tp_Phone('Home','01111111153')),
    6, 
    '07-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'E4'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Head'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 1)
);    

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Ms', 'Peshinka', 'Petrova'),
    tp_Address(
        'Street7', 
        'City7',
        'Ps7'),
    '107',
    tp_Phone_Table(tp_Phone('Mobile','07601222228'), tp_Phone('Home','01111111152')),
    7, 
    '07-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'E4'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Manager'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 6)
);   

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Ms', 'Alberta', 'Gibbon'),
    tp_Address(
        'Street8', 
        'City8',
        'Ps8'),
    '108',
    tp_Phone_Table(tp_Phone('Mobile','07601222229'), tp_Phone('Home','01111111151')),
    8, 
    '06-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'E3'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Project Leader'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 7)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Ms', 'Viktoria', 'Slavova'),
    tp_Address(
        'Street9', 
        'City9',
        'Ps9'),
    '109',
    tp_Phone_Table(tp_Phone('Mobile','07601222232'), tp_Phone('Home','01111111149')),
    9, 
    '06-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'E3'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Accountant'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 7)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Ms', 'Viktoria', 'Nikova'),
    tp_Address(
        'Street10', 
        'City10',
        'Ps10'),
    '110',
    tp_Phone_Table(tp_Phone('Mobile','07601222233'), tp_Phone('Home','01111111149')),
    10, 
    '06-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'E2'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Cashier'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 3)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mrs', 'Alexandra', 'Jones'),
    tp_Address(
        'Street11', 
        'City11',
        'Ps11'),
    '111',
    tp_Phone_Table(tp_Phone('Mobile','07601222234'), tp_Phone('Home','01111111148')),
    11, 
    '06-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'E2'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Head'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 9)
);    

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Kesten', 'Petrov'),
    tp_Address(
        'Street12', 
        'City12',
        'Ps12'),
    '112',
    tp_Phone_Table(tp_Phone('Mobile','07601222235'), tp_Phone('Home','01111111147')),
    12, 
    '06-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'E1'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Manager'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 11)
);   

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 
        'Rollo',
        'Banks'),
    tp_Address(
        '38-44 Dubbs', 
        'Glasgow',
        'PA4 5UA'),
    '113',
    tp_Phone_Table(tp_Phone('Mobile','07601222236'), tp_Phone('Home','01111111146')),
    13, 
    '05-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'E1'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Project Leader'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 12)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Nathan', 'Adams'),
    tp_Address(
        'Street14', 
        'City14',
        'Ps14'),
    '114',
    tp_Phone_Table(tp_Phone('Mobile','07601222237'), tp_Phone('Home','01111111145')),
    14, 
    '05-Mar-2015', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'D4'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Accountant'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 12)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES (  
    tp_Name(
        'Mr', 'Alexandur', 'Smith'),
    tp_Address(
        'Street15', 
        'City15',
        'Ps15'),
    '115',
    tp_Phone_Table(tp_Phone('Mobile','07601222238'), tp_Phone('Home','01111111144')),
    15, 
    '05-Mar-2005', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'D4'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Cashier'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 11)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Cristiano', 'Ramirez'),
    tp_Address(
        'Street16', 
        'City16',
        'Ps16'),
    '116',
    tp_Phone_Table(tp_Phone('Mobile','07601222239'), tp_Phone('Home','01111111143')),
    16, 
    '05-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'D3'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Head'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 1)
);    

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Ms', 'Miglena', 'Brooks'),
    tp_Address(
        'Street17', 
        'City17',
        'Ps17'),
    '117',
    tp_Phone_Table(tp_Phone('Mobile','07601222242'), tp_Phone('Home','01111111142')),
    17, 
    '05-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'D3'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Manager'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 16)
);   

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Ms', 'Desislava', 'Kuncheva'),
    tp_Address(
        'Street18', 
        'City18',
        'Ps18'),
    '118',
    tp_Phone_Table(tp_Phone('Mobile','07601222243'), tp_Phone('Home','01111111141')),
    18, 
    '05-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'D2'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Project Leader'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 17)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Marin', 'Marinov'),
    tp_Address(
        'Street19', 
        'City19',
        'Ps19'),
    '119',
    tp_Phone_Table(tp_Phone('Mobile','07601222244'), tp_Phone('Home','01111111139')),
    19, 
    '05-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'D2'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Accountant'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 17)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Bokluk', 'Wood'),
    tp_Address(
        'Street20', 
        'City20',
        'Ps20'),
    '120',
    tp_Phone_Table(tp_Phone('Mobile','07601222245'), tp_Phone('Home','01111111138')),
    20, 
    '04-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'D1'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Cashier'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 15)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Foncho', 'Tarikata'),
    tp_Address(
        'Street21', 
        'City21',
        'Ps21'),
    '121',
    tp_Phone_Table(tp_Phone('Mobile','07601222246'), tp_Phone('Home','01111111137')),
    21, 
    '04-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'D1'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Head'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 1)
);    

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES (  
    tp_Name(
        'Ms', 'Debora', 'Boqnova'),
    tp_Address(
        'Street22', 
        'City22',
        'Ps22'),
    '122',
    tp_Phone_Table(tp_Phone('Mobile','07601222247'), tp_Phone('Home','01111111136')),
    22, 
    '04-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'C4'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Manager'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 15)
);   

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Boqn', 'Borisov'),
    tp_Address(
        'Street23', 
        'City23',
        'Ps23'),
    '123',
    tp_Phone_Table(tp_Phone('Mobile','07601222248'), tp_Phone('Home','01111111135')),
    23, 
    '04-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'C4'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Project Leader'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 15)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Valentin', 'Vladimirov'),
    tp_Address(
        'Street24', 
        'City24',
        'Ps24'),
    '124',
    tp_Phone_Table(tp_Phone('Mobile','07601222249'), tp_Phone('Home','01111111134')),
    24, 
    '04-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'C3'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Accountant'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 15)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES (  
    tp_Name(
        'Ms', 'Petrana', 'Hernandez'),
    tp_Address(
        'Street25', 
        'City25',
        'Ps25'),
    '125',
    tp_Phone_Table(tp_Phone('Mobile','07601222252'), tp_Phone('Home','01111111133')),
    25, 
    '04-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'C3'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Cashier'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 2)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Kurami', 'Qnko'),
    tp_Address(
        'Street26', 
        'City26',
        'Ps26'),
    '126',
    tp_Phone_Table(tp_Phone('Mobile','07601222253'), tp_Phone('Home','01111111132')),
    26, 
    '04-Mar-2014', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'C2'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Head'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 1)
);    

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Stanimir', 'Vasilev'),
    tp_Address(
        '24 Dubbs Rd', 
        'Glasgow',
        'PA14 5UA'),
    '127',
    tp_Phone_Table(tp_Phone('Mobile','07601222254'), tp_Phone('Home','01111111131')),
    27, 
    '03-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'C2'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Manager'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 26)
);   

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Cherniq', 'Simmons'),
    tp_Address(
        'Street28', 
        'City28',
        'Ps28'),
    '128',
    tp_Phone_Table(tp_Phone('Mobile','07601222255'), tp_Phone('Home','01111111129')),
    28, 
    '03-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'C1'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Project Leader'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 27)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Ms', 'Marinka', 'Tudorova'),
    tp_Address(
        'Street29', 
        'City29',
        'Ps29'),
    '129',
    tp_Phone_Table(tp_Phone('Mobile','07601222256'), tp_Phone('Home','01111111128')),
    29, 
    '03-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'C1'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Accountant'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 15)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Ms', 'Violeta', 'Racheva'),
    tp_Address(
        'Street30', 
        'City30',
        'Ps30'),
    '130',
    tp_Phone_Table(tp_Phone('Mobile','07601222257'), tp_Phone('Home','01111111127')),
    30, 
    '03-Mar-2016', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'B4'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Cashier'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 29)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Ms', 'Gabi', 'Penova'),
    tp_Address(
        'Street31', 
        'City31',
        'Ps31'),
    '131',
    tp_Phone_Table(tp_Phone('Mobile','07601222258'), tp_Phone('Home','01111111126')),
    31, 
    '03-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'B4'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Head'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 1)
);    

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Stephan', 'Perry'),
    tp_Address(
        '28 Dubbs Rd', 
        'Glasgow',
        'PA14 5UA'),
    '132',
    tp_Phone_Table(tp_Phone('Mobile','07601222259'), tp_Phone('Home','01111111125')),
    32, 
    '03-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'B3'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Manager'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 2)
);   

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES (  
    tp_Name(
        'Mrs', 
        'Poppy',
        'Walsh'),
    tp_Address(
        'Street33', 
        'City33',
        'Ps33'),
    '133',
    tp_Phone_Table(tp_Phone('Mobile','07601222262'), tp_Phone('Home','01111111124')),
    33, 
    '03-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'B3'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Project Leader'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 32)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES (  
    tp_Name(
        'Mr', 'Tarzan', 'Todorov'),
    tp_Address(
        'Street34', 
        'City34',
        'Ps34'),
    '134',
    tp_Phone_Table(tp_Phone('Mobile','07601222263'), tp_Phone('Home','01111111123')),
    34, 
    '02-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'B2'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Accountant'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 2)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES (  
    tp_Name(
        'Ms', 'Viktoria', 'Vladimirova'),
    tp_Address(
        'Street35', 
        'City35',
        'Ps35'),
    '135',
    tp_Phone_Table(tp_Phone('Mobile','07601222264'), tp_Phone('Home','01111111122')),
    35, 
    '02-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'B2'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Cashier'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 2)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Ms', 'Cveti', 'Davis'),
    tp_Address(
        'Street36', 
        'City36',
        'Ps36'),
    '136',
    tp_Phone_Table(tp_Phone('Mobile','07601222265'), tp_Phone('Home','01111111121')),
    36, 
    '02-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'B1'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Head'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 1)
);    

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Grigor', 'Dimitrov'),
    tp_Address(
        'Street37', 
        'City37',
        'Ps37'),
    '137',
    tp_Phone_Table(tp_Phone('Mobile','07601222266'), tp_Phone('Home','01111111119')),
    37, 
    '02-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'B1'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Manager'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 2)
);   

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Hristo', 'Stoichkov'),
    tp_Address(
        'Street38', 
        'City38',
        'Ps38'),
    '138',
    tp_Phone_Table(tp_Phone('Mobile','07601222267'), tp_Phone('Home','01111111118')),
    38, 
    '02-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'A4'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Project Leader'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 37)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Petur', 'Pan'),
    tp_Address(
        'Street39', 
        'City39',
        'Ps39'),
    '139',
    tp_Phone_Table(tp_Phone('Mobile','07601222268'), tp_Phone('Home','01111111117')),
    39, 
    '02-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'A4'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Accountant'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 37)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Ms', 'Grigana', 'Collins'),
    tp_Address(
        'Street40', 
        'City40',
        'Ps40'),
    '140',
    tp_Phone_Table(tp_Phone('Mobile','07601222269'), tp_Phone('Home','001111111116')),
    40, 
    '01-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'A3'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Cashier'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 2)
); 


INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Ms', 'Maikti', 'Putkat'),
    tp_Address(
        'Street41', 
        'City41',
        'Ps41'),
    '141',
    tp_Phone_Table(tp_Phone('Mobile','07601222272'), tp_Phone('Home','01111111115')),
    41, 
    '01-Mar-2014', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'A3'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Head'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 1)
);    

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mrs', 'Gergana', 'Jones'),
    tp_Address(
        'Street42', 
        'City42',
        'Ps42'),
    '142',
    tp_Phone_Table(tp_Phone('Mobile','07601222273'), tp_Phone('Home','01111111114')),
    42, 
    '01-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'A2'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Manager'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 2)
);   

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 
        'Pace',
        'Horn'),
    tp_Address(
        'Street43', 
        'City43',
        'Ps43'),
    '143',
    tp_Phone_Table(tp_Phone('Mobile','07601222274'), tp_Phone('Home','01111111113')),
    43, 
    '03-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'A2'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Project Leader'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 42)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Boro', 'Purvi'),
    tp_Address(
        'Street44', 
        'City44',
        'Ps44'),
    '144',
    tp_Phone_Table(tp_Phone('Mobile','07601222275'), tp_Phone('Home','01111111112')),
    44, 
    '02-Mar-2020', 	
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'A1'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Accountant'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 2)
); 

INSERT INTO tb_Employee (fullname, address, ni_number, phone_numbers, id, join_date, branch_id, job_position, supervisor_id) VALUES ( 
    tp_Name(
        'Mr', 'Tistan', 'Jones'),
    tp_Address(
        'Annick Industrial', 
        'Glasgow',
        'G32 0HT'),
    '145',
    tp_Phone_Table(tp_Phone('Mobile','07601222276'), tp_Phone('Home','01111111111')),
    45, 
    '01-Mar-2020', 
    (SELECT REF(b) FROM tb_Branch b WHERE b.id = 'A1'), 
    (SELECT ref(j) FROM tb_Job j WHERE j.position = 'Cashier'), 
    (select REF(e) FROM tb_Employee e WHERE e.id = 42)
); 

/** CUSTOMER ACCOUNT TABLE **/

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '101'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111149')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '102'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111113')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '103'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111115')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '104'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111189')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '105'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111145')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '106'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111123')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '107'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111124')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '108'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111126')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '109'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111129')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '110'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111130')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '111'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111132')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '112'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111134')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '113'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111133')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '114'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111137')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '115'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111141')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '116'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111143')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '117'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111154')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '118'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111121')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '119'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111154')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '120'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111153')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '121'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111153')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '122'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111155')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '123'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111157')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '124'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111178')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '125'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111185')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '126'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111166')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '127'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111170')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '128'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111182')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '129'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111175')
);

INSERT INTO tb_Customer_Account  (id, account_number) VALUES (
    (SELECT REF(c) FROM tb_Customer c WHERE id = '130'),
    (SELECT REF(a) FROM tb_Account a WHERE account_number = '11111160')
);

