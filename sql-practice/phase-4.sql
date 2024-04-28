-- Your code here
CREATE TABLE IF NOT EXISTS employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    department TEXT NOT NULL,
    role_in_office TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS romantic_relationships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id INTEGER NOT NULL,
    romantic_partner_id INTEGER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(id),
    FOREIGN KEY (romantic_partner_id) REFERENCES employees(id)
);

CREATE TABLE IF NOT EXISTS reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id INTEGER NOT NULL,
    review_score FLOAT,
    review TEXT,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

CREATE TABLE IF NOT EXISTS parties (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    party_size INTEGER NOT NULL DEFAULT 8,
    budget DECIMAL(10, 2),
    onsite BOOLEAN
);

CREATE TABLE IF NOT EXISTS party_members (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    party_id INTEGER NOT NULL,
    employee_id INTEGER NOT NULL,
    FOREIGN KEY (party_id) REFERENCES parties(id),
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);