# PSQL Guide

Recently I am trying to figure out how PostgreSQL works in Superset database.

Therefore I used my local Mac Home Brew to install PostgreSQL 14,

In the futrure I will record all the code I got,

and issue I encounter in order to improve my knowledge and ability as a Data Scientist.

## 1. Install PostgreSQL in Home Brew

```brew

brew install postgresql

```

## 2. Start or Stop the Service

```brew
brew services start postgresql@14
brew services list
brew services stop postgresql@14
```
💡
## 3. Useful command

```psql
psql postgres

psql -l

```

> 💡 After entering the db by `psql <db name>`, you can type
>
> `\du` --> see all the Roles and Attributes
> 
> `\dt` --> see the Table in this DB


`createdb`

`createtbl`

## 4. About Roles



## 5. Create, Insert, Copy from csv file example

First, create a new table named persons with the following columns:

- `id`: the person id
- `first_name`: first name
- `last_name`: last name
- `dob`: date of birth
- `email`: the email address

```sql
CREATE TABLE persons (
  id SERIAL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  dob DATE,
  email VARCHAR(255),
  PRIMARY KEY (id)
);
```

To import this CSV file into the persons table, you use `COPY` statement as follows:

```sql
COPY persons(first_name, last_name, dob, email)
FROM 'C:\sampledb\persons.csv'
DELIMITER ','
CSV HEADER;
```

PostgreSQL gives back the following message:

```sql
COPY 2
```

It means that two rows have been copied. Let’s check the persons table.

```sql
SELECT * FROM persons;
```