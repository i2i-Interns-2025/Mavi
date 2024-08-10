-- CUSTOMER Table Creation
CREATE TABLE CUSTOMER (
    CUST_ID INTEGER PRIMARY KEY,
    MSISDN VARCHAR(20),
    NAME VARCHAR(50),
    SURNAME VARCHAR(50),
    EMAIL VARCHAR(50),
    PASSWORD VARCHAR(500),
    SDATE TIMESTAMP,
    TC_NO VARCHAR(20)
);

-- PACKAGE Table Creation
CREATE TABLE PACKAGE (
    PACKAGE_ID INTEGER PRIMARY KEY,
    PACKAGE_NAME VARCHAR(50),
    PRICE FLOAT,
    AMOUNT_MINUTES INTEGER,
    AMOUNT_DATA INTEGER,
    AMOUNT_SMS INTEGER,
    PERIOD INTEGER
);

-- BALANCE Table Creation
CREATE TABLE BALANCE (
    BALANCE_ID INTEGER NOT NULL PRIMARY KEY,
    CUST_ID INTEGER,
    PACKAGE_ID INTEGER,
    BAL_LVL_MINUTES INTEGER,
    BAL_LVL_SMS INTEGER,
    BAL_LVL_DATA INTEGER,
    SDATE TIMESTAMP,
    EDATE TIMESTAMP,
    FOREIGN KEY (CUST_ID) REFERENCES CUSTOMER(CUST_ID),
    FOREIGN KEY (PACKAGE_ID) REFERENCES PACKAGE(PACKAGE_ID)
);

-- PERSONAL_USAGE Table Creation
CREATE TABLE PERSONAL_USAGE (
    PERSONAL_USAGE_ID INTEGER PRIMARY KEY,
    GIVER_ID VARCHAR(20),
    RECEIVER_ID VARCHAR(20),
    USAGE_DATE TIMESTAMP,
    USAGE_TYPE VARCHAR(20),
    USAGE_DURATION INTEGER
);

-- NOTIFICATION_LOGS Table Creation
CREATE TABLE NOTIFICATION_LOGS (
    NOTIFICATION_ID INTEGER PRIMARY KEY,
    NOTIFICATION_TYPE VARCHAR(150),
    NOTIFICATION_TIME TIMESTAMP,
    CUSTOMER_ID INTEGER,
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUST_ID)
);