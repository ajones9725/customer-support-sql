-- Insert Sample Customers
INSERT INTO Customers (name, email, phone) VALUES
('Liam Anderson', 'liam.anderson@example.com', '555-123-4567'),
('Sophia Martinez', 'sophia.martinez@example.com', '555-234-5678'),
('Ethan Roberts', 'ethan.roberts@example.com', '555-345-6789'),
('Olivia Thompson', 'olivia.thompson@example.com', '555-456-7890'),
('Noah Harris', 'noah.harris@example.com', '555-567-8901');

-- Insert Sample Agents
INSERT INTO Agents (name, department) VALUES
('Emily White', 'Technical Support'),
('Daniel Smith', 'Billing'),
('Ava Johnson', 'General Support');

-- Insert Sample Tickets
INSERT INTO Tickets (customer_id, issue_type, status, agent_id) VALUES
(1, 'Website Login Issue', 'Resolved', 1),
(2, 'Billing Discrepancy', 'Open', 2),
(3, 'Product Defect', 'In Progress', 3),
(4, 'Refund Request', 'Resolved', 2),
(5, 'Shipping Delay', 'Closed', 1);

-- Insert Sample Resolutions
INSERT INTO Resolutions (ticket_id, resolution_details, satisfaction_rating) VALUES
(1, 'Reset customer password.', 5),
(4, 'Processed full refund.', 4),
(5, 'Customer issue resolved with shipping carrier.', 3);
