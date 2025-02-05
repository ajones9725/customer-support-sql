-- Retrieve Open Tickets
SELECT t.ticket_id, c.name AS customer_name, t.issue_type, t.created_at
FROM Tickets t
JOIN Customers c ON t.customer_id = c.customer_id
WHERE t.status = 'Open'
ORDER BY t.created_at DESC;

-- Find the Number of Tickets Handled by Each Agent
SELECT a.name AS agent_name, COUNT(t.ticket_id) AS total_tickets_handled
FROM Agents a
LEFT JOIN Tickets t ON a.agent_id = t.agent_id
GROUP BY a.name
ORDER BY total_tickets_handled DESC;

-- Find Average Customer Satisfaction Rating per Agent
SELECT a.name AS agent_name, AVG(r.satisfaction_rating) AS avg_rating
FROM Agents a
JOIN Tickets t ON a.agent_id = t.agent_id
JOIN Resolutions r ON t.ticket_id = r.ticket_id
GROUP BY a.name
ORDER BY avg_rating DESC;

-- Find the Most Common Customer Issues
SELECT issue_type, COUNT(*) AS frequency
FROM Tickets
GROUP BY issue_type
ORDER BY frequency DESC
LIMIT 5;

-- Show Average Resolution Time for Each Agent
SELECT a.name AS agent_name, 
       AVG(EXTRACT(EPOCH FROM (r.resolved_at - t.created_at)) / 3600) AS avg_resolution_time_hours
FROM Agents a
JOIN Tickets t ON a.agent_id = t.agent_id
JOIN Resolutions r ON t.ticket_id = r.ticket_id
GROUP BY a.name
ORDER BY avg_resolution_time_hours ASC;
