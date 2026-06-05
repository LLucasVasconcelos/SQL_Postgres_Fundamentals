# SQL Postgres Basics Review

This repository contains a collection of PostgreSQL scripts designed to review and practice fundamental SQL concepts. It covers everything from basic table creation and data insertion to complex joins and data filtering.

## 🚀 Topics Covered

### 1. Data Definition Language (DDL)
- **CREATE TABLE**: Defining table structures with primary keys, foreign keys, and constraints.
- **ALTER TABLE**: Modifying existing table schemas.
- **DROP TABLE**: Removing tables from the database.
- **TRUNCATE**: Clearing all data from a table while keeping its structure.

### 2. Data Manipulation Language (DML)
- **INSERT**: Adding new records to tables.
- **SERIAL**: Utilizing auto-incrementing identifiers.

### 3. Data Query Language (DQL)
- **SELECT**: Retrieving data from one or more tables.
- **DISTINCT**: Fetching unique values from columns.
- **ORDER BY**: Sorting results in ascending (`ASC`) or descending (`DESC`) order.
- **LIMIT & OFFSET**: Managing pagination of result sets.

### 4. Filtering & Logical Operators
- **WHERE**: Applying conditions to queries.
- **AND / OR**: Combining multiple conditions for precise filtering.

### 5. Joins (Relational Data)
- **INNER JOIN**: Returning records with matching values in both tables.
- **LEFT JOIN**: Returning all records from the left table and matched records from the right.
- **RIGHT JOIN**: Returning all records from the right table and matched records from the left.
- **FULL JOIN**: Returning all records when there is a match in either the left or right table.

### 6. Security & Permissions
- **CREATE USER**: Creating new database users.
- **GRANT**: Assigning specific permissions (CONNECT, USAGE, SELECT, etc.) to users.
- **REVOKE**: Removing previously granted permissions.

## 📊 Database Schema

The scripts use a simple `auth` schema with two related tables:
- **users**: Stores user credentials and profile information.
- **service**: Stores services offered, linked to a specific user via a foreign key (`id_user`).

## 📂 File Structure

The project is organized by topic:

### [01-basics/](./01-basics/)
- `Script_CREATE_DROP_INSERT.sql`: Table creation, data insertion, and basic cleanup.
- `Script_CREATE_DROP_INSERT.txt`: Text version for quick reference.

### [02-security/](./02-security/)
- `Script_GRANT_CREATE_REVOKE.sql`: User management and permission settings.
- `Script_GRANT_CREATE_REVOKE.txt`: Text version for quick reference.

### [03-advanced-queries/](./03-advanced-queries/)
- `Script_SELECT_DISTINCT_JOINS.sql`: Advanced data retrieval using JOINs, DISTINCT, and pagination.
- `Script_SELECT_DISTINCT_JOINS.txt`: Text version for quick reference.

## 🛠️ How to Use
1. Ensure you have a PostgreSQL instance running.
2. Execute the scripts in `01-basics/` first to set up the tables and data.
3. (Optional) Run `02-security/` to practice user and permission management.
4. Run the queries in `03-advanced-queries/` to explore different data retrieval techniques.
