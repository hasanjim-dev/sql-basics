# MySQL Basics

Basic MySQL queries for every core SQL topic, one file per topic. Written while learning SQL.

## Topics

| File | Topic |
|------|-------|
| `00_setup.sql` | Sample database and data |
| `01_introduction_to_databases_rdbms.sql` | Introduction to Databases & RDBMS |
| `02_basic_sql_syntax.sql` | Basic SQL Syntax & Statements |
| `03_select_statement.sql` | SELECT Statement |
| `04_where_clause_filtering.sql` | WHERE Clause & Filtering |
| `05_logical_operators.sql` | Logical Operators (AND, OR, NOT) |
| `06_comparison_special_operators.sql` | IN, BETWEEN, LIKE |
| `07_order_by_limit.sql` | ORDER BY & LIMIT |
| `08_insert_update_delete.sql` | INSERT, UPDATE, DELETE |
| `09_aggregate_functions.sql` | COUNT, SUM, AVG, MAX, MIN |
| `10_group_by_having.sql` | GROUP BY & HAVING |
| `11_table_joins.sql` | INNER, LEFT, RIGHT, FULL JOIN |
| `12_subqueries_nested_queries.sql` | Subqueries & Nested Queries |
| `13_union_intersect_except.sql` | UNION, INTERSECT, EXCEPT |
| `14_string_date_functions.sql` | String & Date Functions |
| `15_ddl_commands.sql` | CREATE, ALTER, DROP |
| `16_constraints.sql` | PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, CHECK, DEFAULT |
| `17_indexes_and_views.sql` | Indexes & Views |

## Getting Started

1. Install MySQL 8.0.31 or newer and MySQL Workbench.
2. Connect to your local MySQL server in Workbench.
3. Run `00_setup.sql` first. It creates the `sql_basics` database with sample tables (`departments`, `employees`).
4. Open and run any other file.

## Notes

- `INTERSECT` and `EXCEPT` require MySQL 8.0.31+.
- MySQL has no `FULL JOIN`, so it is written using `LEFT JOIN` + `UNION` + `RIGHT JOIN`.
- `CHECK` constraints are enforced from MySQL 8.0.16+.

## Author

Muntasir Hasan Jim
