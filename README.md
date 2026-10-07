# Employee Payroll Management System

### PL/SQL GOTO Statements and Functions — Individual Assignment III

## 1. Project Description

This project implements an Employee Payroll Management System using Oracle PL/SQL.

The project was developed for the **Database Development with PL/SQL (INSY 8311)** course. It demonstrates the use of:

* PL/SQL `GOTO` statements
* Conditional statements
* Stored functions
* Exception handling
* Functions used inside SQL queries
* Testing and documentation

The system manages employees, departments, and payroll information.

---

## 2. Use Case

The selected use case for this assignment is an **Employee Payroll Management System**.

The database contains three main tables:

* **Departments** — stores department information.
* **Employees** — stores employee details, salaries, departments, and hire dates.
* **Payroll** — stores payroll information including basic salary, allowances, tax, and net salary.

---

## 3. Technologies Used

* Oracle Database 21c
* Oracle PL/SQL
* SQL Developer
* Visual Studio Code
* Git
* GitHub
* Docker

---

## 4. Database Structure

The main tables used in the project are:

### Departments

Stores department information.

Important columns:

* `department_id`
* `department_name`

### Employees

Stores employee information.

Important columns:

* `employee_id`
* `first_name`
* `last_name`
* `email`
* `department_id`
* `salary`
* `hire_date`

### Payroll

Stores payroll information.

Important columns:

* `payroll_id`
* `employee_id`
* `pay_period`
* `basic_salary`
* `allowances`
* `tax`
* `net_salary`

---

## 5. Repository Structure

```text
plsql-goto-functions-<20251SEN097>-<Ngabo>/
│
├── README.md
├── .gitignore
│
├── 00_setup/
│   └── create_tables.sql
│
├── 01_goto/
│   ├── A1_number_classifier.sql
│   ├── A2_salary_review.sql
│   ├── A3_illegal_goto.sql
│   └── A4_rewrite_no_goto.sql
│
├── 02_functions/
│   ├── B1_fn_annual_salary.sql
│   ├── B2_fn_years_of_service.sql
│   ├── B3_fn_calculate_tax.sql
│   ├── B4_fn_dept_name.sql
│   └── C1_fn_validate_payroll.sql
│
├── 03_tests/
│   ├── B5_functions_in_select.sql
│   ├── test_functions.sql
│   └── test_validate_payroll.sql
│
├── screenshots/
│   ├── A1_output.png
│   ├── A2_output.png
│   ├── A3_error_and_fix.png
│   ├── A4_output.png
│   ├── B5_select_output.png
│   └── C1_output.png
│
└── docs/
    └── REFLECTION.md
```

---

## 6. Part A — GOTO Statements

### A1: Number Classifier

The program classifies a number as:

* Positive
* Negative
* Zero

`GOTO` statements are used to transfer execution to the appropriate labeled section.

### A2: Salary Review

The program classifies an employee's salary as:

* Low
* Average
* High

The classification is performed using conditional statements and `GOTO` labels.

### A3: Illegal GOTO and Fix

An illegal `GOTO` statement was intentionally demonstrated.

Oracle produced the following error:

```text
PLS-00375: illegal GOTO statement
```

The program was then corrected by placing the `GOTO` statement in a legal location.

### A4: Rewrite Without GOTO

The number classifier from A1 was rewritten using normal `IF`, `ELSIF`, and `ELSE` statements without using `GOTO`.

---

## 7. Part B — Stored Functions

The project contains the following stored functions.

### B1: Annual Salary

`fn_annual_salary`

Calculates an employee's annual salary from their monthly salary.

```text
Annual Salary = Monthly Salary × 12
```

### B2: Years of Service

`fn_years_of_service`

Calculates the number of completed years an employee has worked using the employee's hire date.

### B3: Tax Calculator

`fn_calculate_tax`

Calculates tax according to the project rules:

* Salary ≤ 50,000 → 5%
* Salary > 50,000 and ≤ 60,000 → 10%
* Salary > 60,000 → 15%

These rates are custom rules used for this assignment's payroll use case.

### B4: Department Name

`fn_dept_name`

Receives a department ID and returns the corresponding department name from the `Departments` table.

### B5: Functions in SQL

The functions were used directly inside a SQL `SELECT` statement to display employee information together with:

* Annual salary
* Calculated tax
* Years of service
* Department name

---

## 8. Part C — Payroll Validator

### C1: Payroll Validator

The `fn_validate_payroll` function validates payroll values.

The validation rules are:

* Basic salary must be greater than zero.
* Allowances cannot be negative.
* Tax cannot be negative.

A custom exception named `e_invalid_payroll` is raised when invalid payroll data is detected.

The function returns:

```text
VALID
```

for valid payroll data, or an explanatory message for invalid data.

The function also handles unexpected errors using the `WHEN OTHERS` exception handler.

---

## 9. Testing

The project includes test scripts for the stored functions and payroll validator.

The functions were tested using both:

1. Direct calls using `SELECT ... FROM dual`
2. Queries against the actual `Employees` and `Payroll` tables

The test results are documented using screenshots in the `screenshots/` directory.

---

## 10. How to Run the Project

The scripts should be executed in the following order:

### Step 1 — Create the database tables

Run:

```text
00_setup/create_tables.sql
```

This creates the Departments, Employees, and Payroll tables and inserts sample data.

### Step 2 — Create the functions

Run the files in:

```text
02_functions/
```

### Step 3 — Run the GOTO programs

Run the files in:

```text
01_goto/
```

### Step 4 — Run the tests

Run the test files in:

```text
03_tests/
```

### Step 5 — Verify the results

Compare the output with the expected results and review the screenshots in:

```text
screenshots/
```

---

## 11. Oracle Environment

The project was developed and tested using **Oracle Database 21c**.

The Oracle database was run using Docker, and the SQL scripts were executed using Visual Studio Code and Oracle SQL Developer.

---

## 12. Learning Outcomes

Through this assignment, I practiced:

* Using `GOTO` statements and labels in PL/SQL.
* Understanding restrictions on `GOTO` statements.
* Rewriting programs without `GOTO`.
* Creating stored PL/SQL functions.
* Passing parameters to functions.
* Returning values from functions.
* Using `SELECT ... INTO` inside PL/SQL.
* Calling stored functions from SQL queries.
* Handling exceptions using custom exceptions.
* Testing PL/SQL programs and functions.
* Organizing PL/SQL projects using GitHub.

---

## 13. AI Usage

AI assistance was used during the development of this assignment for learning support, debugging guidance, explanation of PL/SQL concepts, and assistance with documentation.

The code was tested in the Oracle Database environment, and I reviewed and understood the implementation before including it in the project.

---

## 14. Author

**Student:** <Meddy Chris NGABO>
**Student ID:** <20251SEN097>
**Course:** Database Development with PL/SQL (INSY 8311)
**Assignment:** Individual Assignment III — PL/SQL GOTO Statements and Functions
