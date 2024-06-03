-- Create the database
CREATE DATABASE Silver_Coin;

-- Use the database
USE Silver_Coin;

-- Create the database
CREATE DATABASE SilverCoin;
USE SilverCoin;


-- Create bank table
CREATE TABLE Bank (
    BankID INT PRIMARY KEY,
    BankName VARCHAR(100),
    BankCode VARCHAR(50),
    BankAddress VARCHAR(255)
);

-- Insert data into Bank table
INSERT INTO Bank (BankID, BankName, BankCode, BankAddress)
VALUES
(1, 'Local Bank', 'LB123', '123 Local St, City'),
(2, 'Global Bank', 'GB123', '456 Global Ave, City'),
(3, 'National Bank', 'NB456', '789 National Dr, City'),
(4, 'International Bank', 'IB789', '901 International Blvd, City'),
(5, 'Community Bank', 'CB012', '345 Community Rd, City'),
(6, 'Regional Bank', 'RB345', '678 Regional Hwy, City'),
(7, 'State Bank', 'SB901', '234 State St, City'),
(8, 'Federal Bank', 'FB234', '567 Federal Dr, City'),
(9, 'Coastal Bank', 'CB567', '890 Coastal Ave, City'),
(10, 'Mountain Bank', 'MB890', '123 Mountain Rd, City'),
(11, 'River Bank', 'RB123', '456 River St, City'),
(12, 'Lake Bank', 'LB456', '789 Lake Dr, City'),
(13, 'City Bank', 'CB789', '901 City St, City'),
(14, 'Town Bank', 'TB901', '234 Town Rd, City'),
(15, 'Village Bank', 'VB234', '567 Village Dr, City');

SELECT * FROM Bank;


-- Create Branch table
CREATE TABLE Branch (
    BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100),
    ContactNumber VARCHAR(50),
    BranchAddress VARCHAR(255),
    BankID INT,
    FOREIGN KEY (BankID) REFERENCES Bank(BankID)
);

-- Insert data into Branch table
INSERT INTO Branch (BranchID, BranchName, ContactNumber, BranchAddress, BankID)
VALUES
(1, 'Local Branch 1', '123-456-7890', '123 Local St, City', 1),
(2, 'Local Branch 2', '123-456-7891', '456 Local St, City', 1),
(3, 'Global Branch 1', '123-456-7892', '123 Global Ave, City', 2),
(4, 'Global Branch 2', '123-456-7893', '456 Global Ave, City', 2),
(5, 'National Branch 1', '123-456-7894', '789 National Dr, City', 3),
(6, 'National Branch 2', '123-456-7895', '890 National Dr, City', 3),
(7, 'International Branch 1', '123-456-7896', '901 International Blvd, City', 4),
(8, 'International Branch 2', '123-456-7897', '234 International Blvd, City', 4),
(9, 'Community Branch 1', '123-456-7898', '345 Community Rd, City', 5),
(10, 'Community Branch 2', '123-456-7899', '678 Community Rd, City', 5),
(11, 'Regional Branch 1', '123-456-7900', '789 Regional Hwy, City', 6),
(12, 'Regional Branch 2', '123-456-7901', '901 Regional Hwy, City', 6),
(13, 'State Branch 1', '123-456-7902', '234 State St, City', 7),
(14, 'State Branch 2', '123-456-7903', '567 State St, City', 7),
(15, 'Federal Branch 1', '123-456-7904', '890 Federal Dr, City', 8);

SELECT * FROM Branch;

-- Create RegionalManager table
CREATE TABLE RegionalManager (
    ManagerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(50)
);

-- Insert data into RegionalManager table
INSERT INTO RegionalManager (ManagerID, Name, Address, Email, PhoneNumber)
VALUES
(1, 'John Doe', '123 Manager St, City', 'john.doe@example.com', '123-456-7890'),
(2, 'Jane Smith', '456 Manager Ave, City', 'jane.smith@example.com', '123-456-7891'),
(3, 'Michael Johnson', '789 Manager Rd, City', 'michael.johnson@example.com', '123-456-7892'),
(4, 'Emily Brown', '901 Manager Blvd, City', 'emily.brown@example.com', '123-456-7893'),
(5, 'David Wilson', '234 Manager Dr, City', 'david.wilson@example.com', '123-456-7894'),
(6, 'Sarah Martinez', '567 Manager St, City', 'sarah.martinez@example.com', '123-456-7895'),
(7, 'Christopher Lee', '890 Manager Ave, City', 'christopher.lee@example.com', '123-456-7896'),
(8, 'Amanda Davis', '123 Manager Rd, City', 'amanda.davis@example.com', '123-456-7897'),
(9, 'Kevin Rodriguez', '456 Manager Blvd, City', 'kevin.rodriguez@example.com', '123-456-7898'),
(10, 'Laura Garcia', '789 Manager Dr, City', 'laura.garcia@example.com', '123-456-7899'),
(11, 'Mark Hernandez', '901 Manager St, City', 'mark.hernandez@example.com', '123-456-7900'),
(12, 'Jessica Lopez', '234 Manager Ave, City', 'jessica.lopez@example.com', '123-456-7901'),
(13, 'Brian Perez', '567 Manager Rd, City', 'brian.perez@example.com', '123-456-7902'),
(14, 'Rachel Nguyen', '890 Manager Blvd, City', 'rachel.nguyen@example.com', '123-456-7903'),
(15, 'Eric Kim', '123 Manager Dr, City', 'eric.kim@example.com', '123-456-7904');

SELECT * FROM RegionalManager;


-- Create BranchManager table
CREATE TABLE BranchManager (
    BranchID INT,
    ManagerID INT,
    PRIMARY KEY (BranchID, ManagerID),
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID),
    FOREIGN KEY (ManagerID) REFERENCES RegionalManager(ManagerID)
);

-- Insert data into BranchManager table
INSERT INTO BranchManager (BranchID, ManagerID)
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 5),
(10, 5),
(11, 6),
(12, 6),
(13, 7),
(14, 7),
(15, 8);

SELECT * FROM BranchManager;


-- Create Customer table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    NIC VARCHAR(50),
    PhoneNumber VARCHAR(50),
    Address VARCHAR(255)
);

-- Insert data into Customer table
INSERT INTO Customer (CustomerID, Name, NIC, PhoneNumber, Address)
VALUES
(1, 'Alice', 'NIC001', '123-456-7890', '123 Customer St, City'),
(2, 'Bob', 'NIC002', '123-456-7891', '456 Customer Ave, City'),
(3, 'Charlie', 'NIC003', '123-456-7892', '789 Customer Rd, City'),
(4, 'David', 'NIC004', '123-456-7893', '901 Customer Blvd, City'),
(5, 'Emily', 'NIC005', '123-456-7894', '234 Customer Dr, City'),
(6, 'Frank', 'NIC006', '123-456-7895', '567 Customer St, City'),
(7, 'George', 'NIC007', '123-456-7896', '890 Customer Ave, City'),
(8, 'Helen', 'NIC008', '123-456-7897', '123 Customer Rd, City'),
(9, 'Ivan', 'NIC009', '123-456-7898', '456 Customer Blvd, City'),
(10, 'Julia', 'NIC010', '123-456-7899', '789 Customer Dr, City'),
(11, 'Kevin', 'NIC011', '123-456-7900', '901 Customer St, City'),
(12, 'Lily', 'NIC012', '123-456-7901', '234 Customer Ave, City'),
(13, 'Michael', 'NIC013', '123-456-7902', '567 Customer Rd, City'),
(14, 'Nancy', 'NIC014', '123-456-7903', '890 Customer Blvd, City'),
(15, 'Olivia', 'NIC015', '123-456-7904', '123 Customer Dr, City');

SELECT * FROM Customer;

-- Create CustomerAccount table
CREATE TABLE CustomerAccount (
    CustomerID INT,
    AccountNo INT,
    PRIMARY KEY (CustomerID, AccountNo),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (AccountNo) REFERENCES Account(AccountNo)
);

-- Create Account table
CREATE TABLE Account (
    AccountNo INT PRIMARY KEY,
    AccountType VARCHAR(50),
    Balance DECIMAL(18, 2),
    BranchID INT,
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);

-- Insert data into Account table
INSERT INTO Account (AccountNo, AccountType, Balance, BranchID)
VALUES
(1, 'Savings', 1000.00, 1),
(2, 'Checking', 1500.00, 1),
(3, 'Savings', 2000.00, 2),
(4, 'Checking', 2500.00, 3),
(5, 'Savings', 3000.00, 4),
(6, 'Checking', 3500.00, 5),
(7, 'Savings', 4000.00, 6),
(8, 'Checking', 4500.00, 7),
(9, 'Savings', 5000.00, 8),
(10, 'Checking', 5500.00, 9),
(11, 'Savings', 6000.00, 10),
(12, 'Checking', 6500.00, 11),
(13, 'Savings', 7000.00, 12),
(14, 'Checking', 7500.00, 13),
(15, 'Savings', 8000.00, 14);

SELECT * FROM Account;

-- Insert data into CustomerAccount table
INSERT INTO CustomerAccount (CustomerID, AccountNo)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(1, 5),
(1, 6),
(2, 7),
(2, 8),
(3, 9),
(3, 10),
(4, 11),
(4, 12),
(5, 13),
(5, 14),
(6, 15);

SELECT * FROM CustomerAccount;


-- Create Loan table
CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    LoanType VARCHAR(50),
    Amount DECIMAL(18, 2),
    InterestRate DECIMAL(5, 2),
    BranchID INT,
    CustomerID INT,
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Insert data into Loan table
INSERT INTO Loan (LoanID, LoanType, Amount, InterestRate, BranchID, CustomerID)
VALUES
(1, 'Personal', 5000.00, 5.5, 1, 1),
(2, 'Home', 150000.00, 4.0, 1, 1),
(3, 'Car', 20000.00, 6.0, 2, 2),
(4, 'Education', 10000.00, 3.5, 2, 2),
(5, 'Business', 30000.00, 7.0, 3, 3),
(6, 'Personal', 7000.00, 6.5, 3, 3),
(7, 'Home', 200000.00, 4.5, 4, 4),
(8, 'Car', 25000.00, 5.0, 4, 4),
(9, 'Education', 12000.00, 3.0, 5, 5),
(10, 'Business', 35000.00, 7.5, 5, 5),
(11, 'Personal', 8000.00, 5.0, 6, 6),
(12, 'Home', 180000.00, 4.2, 6, 6),
(13, 'Car', 22000.00, 6.2, 7, 7),
(14, 'Education', 15000.00, 3.2, 7, 7),
(15, 'Business', 40000.00, 8.0, 8, 8);

SELECT * FROM Loan;

--List of account details held by a branch
SELECT Account.AccountNo, Account.AccountType, Account.Balance
FROM Account
WHERE Account.BranchID = [BranchID];

--List of loans availed by a specific customer
SELECT Loan.LoanID, Loan.LoanType, Loan.Amount, Loan.InterestRate
FROM Loan
WHERE Loan.CustomerID = [CustomerID];

--List of accounts held by a specific customer
SELECT Account.AccountNo, Account.AccountType, Account.Balance
FROM Account
JOIN CustomerAccount ON Account.AccountNo = CustomerAccount.AccountNo
WHERE CustomerAccount.CustomerID = [CustomerID];

