-- Create Customers Table
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    signup_date DATE DEFAULT CURRENT_DATE
);

-- Create Agents Table
CREATE TABLE Agents (
    agent_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    hire_date DATE DEFAULT CURRENT_DATE
);

-- Create Tickets Table
CREATE TABLE Tickets (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customers(customer_id),
    issue_type VARCHAR(255),
    status VARCHAR(50) CHECK (status IN ('Open', 'In Progress', 'Resolved', 'Closed')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    agent_id INT REFERENCES Agents(agent_id)
);

-- Create Resolutions Table
CREATE TABLE Resolutions (
    resolution_id SERIAL PRIMARY KEY,
    ticket_id INT REFERENCES Tickets(ticket_id),
    resolution_details TEXT,
    resolved_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    satisfaction_rating INT CHECK (satisfaction_rating BETWEEN 1 AND 5)
);
