# Bookmark Manager

This week, you will build a web app that stores web bookmarks in a database. If you end up using the walkthrough a lot, that's fine! Just make sure that you and your pair regularly pause to test each other's understanding of what you're being guided towards.

If you try to solve the challenges on your own early on, you'll probably find a quite different codebase in the walkthrough, should you need it in later challenges. In this case, you should not consider to the walkthrough to be 'correct' – it's just one possible way of implementing Bookmark manager and you'll need to adapt the code in the walkthrough to fit your application.

## Learning objectives
##### You will work towards these new goals:

* Diagram the data flow from user action to server resource and back again
* Explain the basics of how databases work, including:
   - What tables are and how they are structured
   - What structured query language (SQL) is used for
   - One to one relationships
   - One to many relationships
   - Many to many relationships
* Follow an effective debugging process for database-backed web applications
* Build a simple web app that can read from and write to a database

##### And consolidate last week's goals:

* Write feature tests using Capybara
* Test-drive a simple Sinatra app
* Follow an effective process to debug web applications
* Explain and diagram the HTTP request/response cycle
* Explain and diagram the MVC pattern

## The project

### Overview

You're going to build a bookmark manager.  A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

### User Interface Sketch (Hi-Fi)

This is the basic view of the website. You will build it by working through the sequence of challenges. As you go on, we will be challenging you to extend the functionality of this website.

![](https://dchtm6r471mui.cloudfront.net/hackpad.com_jubMxdBrjni_p.52567_1380279073159_Screen%20Shot%202013-09-27%20at%2011.06.12.png "Bookmark Manager")

### Structure

Working through the challenges, you'll be guided towards a particular application structure through a series of intermediate steps, refactoring as you go. Below is an example of how your application could look at some point in it's development – it's a simplified version of our Bookmark Manager example application, so your app might never have this exact structure, but that's OK.

![](./images/example_structure.png)

Note how the views directory has a sub-directory for each of the two models, `bookmark` and `comment`. This is a common structure for web applications and it allows you to use a short, standardised name for each view.

You may also have noticed the migrations directory and be wondering what that's about. Migrations are used to make changes to the database. You could do these manually, but then you'd need to record exactly what changes were made, in what order, so that you could recreate the same database on another machine or in the cloud. Migrations save you the pain of doing that. In this project, your migrations will contain SQL (and language specifically designed for interacting with certain types of database). In other projects, they'll be structured differently but will perform the exact same role.

## Learning, not challenge progress

The challenge material is pretty tough this week. You're not meant to get through it all.  As always at Makers, focus on deep learning, rather than progression through the challenges and always come back to the weekly goals to track your progress.

## Challenges

### Core challenges
 1. [Creating User Stories](01_creating_user_stories.md)
 2. [Setting up a Web Project](02_setting_up_a_web_project.md)
 3. [Viewing bookmarks](03_viewing_bookmarks.md)
 4. [Setting up a Database](04_setting_up_a_database.md)
 5. [Creating your First Table](05_creating_your_first_table.md)
 6. [Manipulating Table Data](06_manipulating_table_data.md)
 7. [Interacting with Postgres from Ruby](07_interacting_with_postgres_from_ruby.md)
 8. [Upgrading your Toolset](08_upgrading_your_toolset.md)
 9. [Setting up a Testing Environment](09_setting_up_a_testing_environment.md)
 10. [Creating bookmarks](10_creating_bookmarks.md)
 11. [Wrapping Database data in program objects](11_wrapping_database_data_in_program_objects.md)
 12. [Securing Your App](./12_securing_your_app.md)
 13. [Deleting bookmarks](13_deleting_bookmarks.md)

### Guided extensions
 14. [CRUD](14_crud.md)
 15. [Extracting a Database Setup object](15_extracting_a_database_setup_object.md)
 16. [Validating bookmarks](16_validating_bookmarks.md)
 17. [One to Many Relationships](17_one_to_many_relations.md)
 18. [Many to Many Relationships](18_many_to_many_relationships.md)
 19. [Registration](19_registration.md)
 20. [Authentication](20_authentication.md)

### Unguided extensions

If you finish the challenges above, try implementing some of these extra challenges:

#### Linking Bookmarks to a User

At the moment logging in doesn't change the user experience much. Can you extend the application so that:

- A user has to be logged in to add or view Bookmarks
- A user can only read/update/delete bookmarks they have added

#### Deleting Bookmarks with Comments and Tags

Have you tried deleting a Bookmark that has a Comment or a Tag? You might notice an error!
Can you use TDD to resolve this error, and allow the user to delete a Bookmark that has Comments and/or Tags?

#### Improve User Interface

At the end of the walkthrough we are left with a number of unlinked routes. Can you improve the user experience by linking the pages together? Don't forget to test drive these changes!

#### Automate Migrations

You should have a number of `.sql` files that have the individual migration steps required to set up the databases. Can you use these to set up Ruby methods to run each SQL command? You could then run these methods to do the database setup in test and development.