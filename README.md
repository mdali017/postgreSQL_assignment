
### Question-1:  What is PostgreSQL?

Answere: PostgreSQL is an advanced, open-source relational database management system (RDBMS) known for 
its strong reliability, flexibility, and support for complex queries. It’s designed to handle a wide 
range of data workloads, from small applications to large-scale, high-performance systems.


### Question-2: What is the purpose of a database schema in PostgreSQL?

Answere: In PostgreSQL, a database schema is a way to logically organize and structure data within a 
database. It defines how data is stored and relates to each other, acting as a blueprint for the 
database.

There are many key purposes of a schema in PostgreSQL such as 
1. Organizing Data
2. Namespace Management
3. Access Control
4. Modular Development
5. Simplifying Queries


### Question-3: Explain the primary key and foreign key concepts in PostgreSQL.

Answere: 
** Primary Key: 
A primary key is a column or a set of columns in a table that uniquely identifies each row in that table. It ensures that:
i. Uniqueness
ii. Non-Nullability

** Foreign Key: 
A foreign key is a column or a set of columns in one table that refers to the primary key in another 
table.

### Question-4: What is the difference between the VARCHAR and CHAR data types?

Answere: 
The main difference between the VARCHAR AND CHAR is
VARCHAR can stores variable-length strings on the other hand CHAR stores fixed-length strings.
VARCHAR  is generally more storage-efficient because it only uses the space needed for the actual string
length, while


### Question-5: Explain the purpose of the WHERE clause in a SELECT statement.

Answere: The WHERE clause in a SELECT statement is used to filter records in a database query.
it's apply for every row in database to filter data with sepecific condition.


### Question-6: What are the LIMIT and OFFSET clauses used for?

Answere: 
LIMIT: The LIMIT clause restricts the number of rows returned by the query. It's used to specify how many 
rows I want to retrieve from the result set.

OFFSET: The OFFSET clause is used to skip a specified number of rows before starting to return rows from 
the query. It's commonly used in combination with LIMIT for pagination purposes.
 


