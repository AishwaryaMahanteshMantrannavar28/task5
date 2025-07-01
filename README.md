# Task 5: SQL Joins (Inner, Left, Right, Full)

## 📘 Objective
Learn to combine data from multiple related tables using different types of SQL joins:
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN

## 🧰 Tools Used
- MySQL Workbench 
- SQL language

## 📂 Tables Created

### 1. `Customers`
| Column Name   | Data Type      | Description        |
|---------------|----------------|--------------------|
| `customer_id` | INT (Primary Key) | Unique customer ID |
| `customer_name` | VARCHAR(100) | Name of the customer |

### 2. `Orders`
| Column Name   | Data Type      | Description              |
|---------------|----------------|--------------------------|
| `order_id`    | INT (Primary Key) | Unique order ID       |
| `customer_id` | INT (Foreign Key) | Refers to Customers table |
| `order_amount`| INT            | Amount of the order       |




