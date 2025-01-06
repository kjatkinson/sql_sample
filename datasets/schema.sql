-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,       -- Unique identifier for each customer
    Name VARCHAR(100) NOT NULL,       -- Customer name
    Email VARCHAR(100),               -- Email address (can be NULL)
    JoinDate DATE                     -- Date the customer joined (can be NULL)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,          -- Unique identifier for each order
    CustomerID INT,                   -- Links to the Customers table
    OrderDate DATE,                   -- Date the order was placed (can be NULL)
    TotalAmount DECIMAL(10, 2),       -- Total amount for the order (can be NULL)
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) -- Link to Customers
);
