## Manipulating Table Data

We have created a PostgreSQL database, and added a `bookmarks` table. At the moment, there's no data in the table.

In this challenge, you will use SQL to **c**reate, **r**ead (**query**), **u**pdate and **d**elete (CRUD) data in the table you created, inside your PostgreSQL database.

## Learning Objectives covered

* Build a simple web app that can read from and write to a database
  * Use SQL terms like `SELECT`, `FROM`, `WHERE` and `*` to query a database table
  * Use SQL terms like `INSERT`, `UPDATE` and `DELETE` to create, update and delete database entries

## To complete this challenge, using the psql command line interface

- [ ] List any existing rows in the bookmarks table.
- [ ] Create four link entries in the `bookmarks` table, with the following URLs: `http://www.makersacademy.com/`, `http://www.askjeeves.com`  `http://www.twitter.com/`, and `http://www.google.com/`, using an `INSERT` statement.
- [ ] List the four entries using a `SELECT` statement.
- [ ] Delete the link with a URL of `http://www.askjeeves.com` using a `DELETE` statement.
- [ ] Update the `http://www.twitter.com` link to `http://www.destroyallsoftware.com` using an `UPDATE` statement.

## Hints
&nbsp;<details><summary>CLICK ME</summary>
* Again, use the documents linked below to look up the commands you need.
* Sanity check each step using a SELECT statement.
&nbsp;</details>

## Resources

* [PostgreSQL Command Line Cheat Sheet](https://www.postgresqltutorial.com/postgresql-cheat-sheet/)
* [SQL in One Page](http://www.cheat-sheets.org/sites/sql.su/)
* [Relational Database: Terminology](https://en.wikipedia.org/wiki/Relational_database#Terminology)