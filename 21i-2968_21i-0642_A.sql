use master
drop database Cafe
Create database Cafe
use Cafe

CREATE TABLE Roles (
    RoleID INT PRIMARY KEY,
    RoleName NVARCHAR(50) NOT NULL
);

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
	Passwor VARCHAR(100) NOT NULL,
    RoleID INT FOREIGN KEY REFERENCES Roles(RoleID)
);

CREATE TABLE Prices (
    ItemID INT PRIMARY KEY,
    Price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE ItemTypes (
    TypeID INT PRIMARY KEY,
    TypeName VARCHAR(50) NOT NULL
);

CREATE TABLE Items (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(100) NOT NULL,
    TypeID INT FOREIGN KEY REFERENCES ItemTypes(TypeID)
);

CREATE TABLE FeaturedItem (
    FeaturedItemID INT PRIMARY KEY,
    ItemID INT FOREIGN KEY REFERENCES Items(ItemID)
);

CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,
    UserID INT, -- Foreign key referencing the Users table
    FeedbackText NVARCHAR(MAX) NOT NULL,
    FeedbackDate DATETIME NOT NULL,
    CONSTRAINT FK_User_Feedback FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

---Triggers
-- Trigger to prevent deleting roles that are in use
go
CREATE TRIGGER trgPreventRoleDelete
ON Roles
INSTEAD OF DELETE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Users WHERE RoleID = (SELECT RoleID FROM deleted))
    BEGIN
        RAISERROR ('Cannot delete role. Users are associated with this role.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    DELETE FROM Roles WHERE RoleID IN (SELECT RoleID FROM deleted);
END;
go
-- Trigger to enforce password encryption before inserting/updating users
CREATE TRIGGER trgEncryptPassword
ON Users
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE u
    SET u.Passwor = HASHBYTES('SHA2_256', u.Passwor)
    FROM Users u
    JOIN inserted i ON u.UserID = i.UserID;
END;
go
-- Trigger to update the feedback date upon insertion
CREATE TRIGGER trgSetFeedbackDate
ON Feedback
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Feedback
    SET FeedbackDate = GETDATE()
    WHERE FeedbackID IN (SELECT FeedbackID FROM inserted);
END;
go

INSERT INTO Roles (RoleID, RoleName) VALUES 
(1, 'Admin'),
(2, 'Client'),
(3, 'Manager');

INSERT INTO Users (UserID, Username, Email, Passwor, RoleID) 
VALUES 
(1, 'AdminUser', 'A1', '123', 1), -- Admin user
(2, 'ClientUser', 'C1', '123', 2), -- Client user
(3, 'ManagerUser', 'M1', '123', 3); -- Manager user

INSERT INTO ItemTypes (TypeID, TypeName) VALUES 
(1, 'Beverage'),
(2, 'Food');

-- Insert sample items
INSERT INTO Items (ItemID, ItemName, TypeID) VALUES 
(1, 'Coffee', 1), -- Beverage
(2, 'Sandwich', 2); -- Food

-- Insert sample prices for items
INSERT INTO Prices (ItemID, Price) VALUES 
(1, 2.50), -- Price for Coffee
(2, 5.00); -- Price for Sandwich

-- Joining the tables to retrieve information
SELECT I.ItemID, I.ItemName, IT.TypeName, P.Price
FROM Items I
INNER JOIN ItemTypes IT ON I.TypeID = IT.TypeID
INNER JOIN Prices P ON I.ItemID = P.ItemID;

Select * from Users

-- Insert additional data into Prices table
INSERT INTO Prices (ItemID, Price) VALUES 
(3, 3.00), -- Price for ItemID 3
(4, 6.50); -- Price for ItemID 4

-- Insert additional data into ItemTypes table
INSERT INTO ItemTypes (TypeID, TypeName) VALUES 
(3, 'Dessert'),
(4, 'Snack');

-- Insert additional data into Items table
INSERT INTO Items (ItemID, ItemName, TypeID) VALUES 
(3, 'Tea', 1), -- Beverage
(4, 'Burger', 2), -- Food
(5, 'Cake', 3), -- Dessert
(6, 'Chips', 4); -- Snack

-- Insert additional data into FeaturedItem table
INSERT INTO FeaturedItem (FeaturedItemID, ItemID) VALUES 
(3, 3), -- Featured Tea (ItemID 3)
(4, 4), -- Featured Burger (ItemID 4)
(5, 5), -- Featured Cake (ItemID 5)
(6, 6); -- Featured Chips (ItemID 6)

-- Insert sample feedback for users into the Feedback table
INSERT INTO Feedback (FeedbackID, UserID, FeedbackText, FeedbackDate) VALUES 
(1, 1, 'Great service! Really satisfied with the product.', GETDATE()),
(2, 2, 'The website interface needs improvement.', GETDATE()),
(3, 3, 'Fast delivery and excellent customer support.', GETDATE()),
(4, 2, 'The product quality is fantastic!', GETDATE()),
(5, 2, 'I faced issues with the payment process.', GETDATE()),
(6, 1, 'Love the variety of products available.', GETDATE()),
(7, 2, 'Responsive and helpful staff.', GETDATE()),
(8, 3, 'The app is user-friendly and easy to navigate.', GETDATE()),
(9, 2, 'Received the wrong item in my order.', GETDATE()),
(10, 3, 'The pricing is competitive compared to other stores.', GETDATE());

--1. Report on Users and Their Roles:
SELECT 
    U.UserID, 
    U.Username, 
    U.Email, 
    R.RoleName
FROM 
    Users U
INNER JOIN 
    (SELECT RoleID, RoleName FROM Roles) R ON U.RoleID = R.RoleID;

--2. Average Price of Each ItemType:
SELECT 
    IT.TypeName,
    AVG(P.Price) AS AveragePrice
FROM 
    Prices P
INNER JOIN 
    (SELECT ItemID, TypeID FROM Items) I ON P.ItemID = I.ItemID
INNER JOIN 
    ItemTypes IT ON I.TypeID = IT.TypeID
GROUP BY 
    IT.TypeName;

--3. Feedback Summary for Each User:
SELECT 
    U.UserID,
    U.Username,
    COUNT(F.FeedbackID) AS FeedbackCount
FROM 
    Users U
LEFT JOIN 
    (SELECT UserID, FeedbackID FROM Feedback) F ON U.UserID = F.UserID
GROUP BY 
    U.UserID, U.Username;

--4. Details of Featured Items:
SELECT 
    F.FeaturedItemID,
    I.ItemName,
    P.Price
FROM 
    FeaturedItem F
INNER JOIN 
    (SELECT ItemID, ItemName FROM Items) I ON F.ItemID = I.ItemID
INNER JOIN 
    Prices P ON F.ItemID = P.ItemID;

--5. List of Items with Feedback:
SELECT DISTINCT 
    I.ItemID,
    I.ItemName
FROM 
    Items I
WHERE EXISTS 
    (SELECT 1 FROM Feedback F 
     INNER JOIN Users U ON F.UserID = U.UserID 
     WHERE U.RoleID = 2);