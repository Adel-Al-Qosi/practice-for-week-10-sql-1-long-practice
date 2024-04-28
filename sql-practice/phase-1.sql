CREATE TABLE IF NOT EXISTS customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    contact1 TEXT,
    contact2 TEXT,
    points INTEGER DEFAULT 5
);

CREATE TABLE IF NOT EXISTS coffees (
    coffee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    coffee_name VARCHAR(100) NOT NULL,
    price NUMERIC(4, 2) NOT NULL,
    points_given INTEGER DEFAULT 1
);

CREATE TABLE IF NOT EXISTS Purchases (
    Purchase_id INTEGER PRIMARY KEY AUTOINCREMENT,
    coffee_id INTEGER,
    customer_id INTEGER,
    purchase_date DATE,
    FOREIGN KEY (coffee_id) REFERENCES coffees(coffee_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE IF NOT EXISTS Redemptions (
    redemption_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    Redemption_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);