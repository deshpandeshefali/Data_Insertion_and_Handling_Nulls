# Task 2: Data Insertion and Handling Nulls

## Overview
This task is part of the **SQL Developer Internship** and focuses on applying **Data Manipulation Language (DML)** commands such as `INSERT`, `UPDATE`, and `DELETE` using the previously created **E-Commerce Database Schema**.  
The goal is to populate tables, handle NULL values, and maintain clean and consistent data across all entities.

---

## Objectives
- Insert records into multiple related tables  
- Handle missing values (NULL) and apply default values  
- Use `UPDATE` and `DELETE` with appropriate `WHERE` conditions  
- Perform partial insertions and use foreign key relationships  

---

## SQL Operations Used
| Operation | Description |
|------------|-------------|
| `INSERT INTO` | Add new records into tables |
| `UPDATE` | Modify existing data |
| `DELETE` | Remove records with conditions |
| `IS NULL` | Check for NULL values |
| `DEFAULT` | Assign a predefined value when none is provided |

---

## 🧾 Example Tables Involved
- **Customers**
- **Category**
- **Products**
- **Orders**
- **Order_Details**
- **Payments**

All tables are part of the `ecommerce_db` schema created in **Task 1**.

---

## Highlights
- Populated all tables with **sample e-commerce data**
- Demonstrated **NULL handling** using `IS NULL` and default updates
- Used **foreign key relationships** for relational integrity
- Shown examples of **partial data insertion**
- Included **data update and deletion** operations

---

## Interview Questions and Answers

1. **Difference between NULL and 0:**  
   - `NULL` means no value or unknown; `0` is an actual numeric value.

2. **What is a default constraint?**  
   - It assigns a default value if no data is provided during insertion.

3. **How does IS NULL work?**  
   - Used to filter records where a column contains NULL values.

4. **How do you update multiple rows?**  
   ```sql
   UPDATE Customers SET City = 'Pune' WHERE State = 'MH';

5. **Can we insert partial values?**
  -Yes, if non-specified columns have default values or allow NULL.


6. **What happens if a NOT NULL field is left empty?**
  -The database throws an error; the record is not inserted.

7. **How do you rollback a deletion?**
  -Use ROLLBACK if the deletion was done within a transaction.

8. **Can we insert values into specific columns only?**
  -Yes, specify the column names explicitly in the INSERT INTO statement.

9. **How to insert values using SELECT?**
    - INSERT INTO backup_orders SELECT * FROM Orders;

10. **What is ON DELETE CASCADE?
  -When a parent record is deleted, all related child records are automatically removed.**

Author
Shefali Deshpande
