# Reflection — PL/SQL GOTO Statements and Functions

## 1. Introduction

This assignment helped me understand how PL/SQL can be used to control program execution and create reusable database functions. I worked with `GOTO` statements, conditional statements, stored functions, SQL queries, and exception handling using an Employee Payroll Management System as my use case.

---

## 2. What I Learned About GOTO Statements

I learned that a `GOTO` statement transfers program execution to a specific labeled section of a PL/SQL block.

The basic structure is:

```sql
GOTO label_name;

<<label_name>>
```

I also learned that `GOTO` statements have restrictions. In particular, Oracle does not allow a `GOTO` statement to jump into certain blocks such as an `IF` statement from outside that block.

In A3, I intentionally created an illegal `GOTO` statement and received:

```text
PLS-00375: illegal GOTO statement
```

This helped me understand that labels are not simply unrestricted jump points. Their location and scope matter.

---

## 3. GOTO Versus Structured Programming

In A4, I rewrote the number classifier without using `GOTO`.

The program became simpler because the `IF`, `ELSIF`, and `ELSE` statements directly represented the decision being made.

From this exercise, I learned that although `GOTO` can be used to control execution, structured programming can make code easier to read and maintain.

---

## 4. What I Learned About Functions

I learned how to create stored PL/SQL functions using `CREATE OR REPLACE FUNCTION`.

A function receives input parameters, performs an operation, and returns a value.

For example, my annual salary function calculates:

```text
Annual Salary = Monthly Salary × 12
```

I created several functions for the payroll system:

* `fn_annual_salary`
* `fn_years_of_service`
* `fn_calculate_tax`
* `fn_dept_name`
* `fn_validate_payroll`

I also learned how these functions can be called directly from SQL statements.

---

## 5. Using SELECT INTO

While creating the department name function, I learned about `SELECT ... INTO`.

In PL/SQL, `SELECT ... INTO` is used to retrieve a value from the database and store it in a PL/SQL variable.

For example, the department name is selected from the `Departments` table and stored in a variable before being returned by the function.

This was useful for understanding the difference between normal SQL queries and SQL statements executed inside PL/SQL.

---

## 6. Exception Handling

The payroll validator helped me understand exception handling in PL/SQL.

I created a custom exception called:

```text
e_invalid_payroll
```

The function raises this exception when the payroll data does not satisfy the validation rules.

The rules used in my project were:

* Basic salary must be greater than zero.
* Allowances cannot be negative.
* Tax cannot be negative.

I also used `WHEN OTHERS` to handle unexpected errors.

This showed me how exceptions can be used to handle invalid data and prevent a program from failing without providing useful information.

---

## 7. Challenges I Faced

One challenge I faced was understanding the restrictions of `GOTO` statements. The A3 task helped me understand this by allowing me to see an actual Oracle compilation error.

Another challenge was understanding how `SELECT ... INTO` works inside a function. I initially understood `SELECT` mainly as a way to display data, but I learned that inside PL/SQL it can retrieve a value and store it in a variable.

I also had to pay attention to the validation conditions in the payroll function. For example, I learned that using `OR` is appropriate when any one invalid value should make the entire payroll record invalid.

---

## 8. Testing and Debugging

I tested the programs and functions using both simple test values and data from the actual database tables.

For example, I tested the payroll validator with:

* Valid salary, allowance, and tax values.
* A zero salary.
* A negative allowance.
* A negative tax.

I also tested the functions using the `Employees` and `Payroll` tables.

Testing helped me confirm that the functions returned the expected results and helped me identify and correct errors during development.

---

## 9. Overall Learning

Overall, this assignment improved my understanding of PL/SQL programming.

I learned that PL/SQL combines SQL with programming concepts such as:

* Variables
* Conditions
* Labels
* Functions
* Exceptions
* Error handling

The assignment also helped me understand why structured programming is often easier to maintain than using many `GOTO` statements.

Most importantly, I learned how to create reusable database functions and use them directly in SQL queries.

---

## 10. Conclusion

The assignment gave me practical experience in developing and testing PL/SQL programs. By building an Employee Payroll Management System, I was able to connect the concepts from the course to a realistic database use case.

I now have a better understanding of `GOTO` statements, stored functions, exception handling, and how PL/SQL functions can be integrated with SQL queries.
