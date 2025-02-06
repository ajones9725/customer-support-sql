# 📌 Customer Support Ticketing System (SQL)

A SQL-based customer support ticketing system that tracks service issues, resolution times, and agent performance.

---

## 📌 About This Project
This SQL-based **Customer Support Ticketing System** helps track:
- 🛠 Service issues  
- ⏳ Resolution times  
- 📊 Agent performance  

The system allows efficient handling of customer tickets, ensuring timely resolutions and tracking agent productivity.

---

## 🛠 How to Use

### 1️⃣ Clone or Download the Repository
- Click the green `Code` button on GitHub.
- Select **Download ZIP** and extract files OR use:
  ```bash
  git clone <your-repository-link>

2️⃣ Prerequisites

Before using this project, ensure you have:
	•	MySQL (or another SQL database) installed
	•	A SQL client (e.g., MySQL Workbench, pgAdmin, SQLite Browser)

3️⃣ Database Setup
	1.	Open your SQL client.
	2.	Create a new database:

CREATE DATABASE support_ticket_system;


	3.	Import the provided SQL file:

mysql -u your_user -p support_ticket_system < database.sql


	4.	Verify that the tables were created successfully by running:

SHOW TABLES;



4️⃣ Running Queries

Once the database is set up, you can run queries like:

SELECT * FROM tickets WHERE status = 'Open';

🔧 Features

✔ Track customer support tickets
✔ Monitor issue resolution times
✔ Assign and escalate tickets based on priority
✔ Generate reports on agent performance

💡 Contributing

If you’d like to contribute, please follow these steps:
	1.	Fork the repository
	2.	Create a new branch (git checkout -b feature-branch)
	3.	Commit your changes (git commit -m "Added new feature")
	4.	Push to the branch (git push origin feature-branch)
	5.	Open a Pull Request
