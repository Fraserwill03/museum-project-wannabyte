[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-c66648af7eb3fe8bc4f294546bfd86ef473780cde1dea487d3c4ff354943c9ae.svg)](https://classroom.github.com/online_ide?assignment_repo_id=9470033&assignment_repo_type=AssignmentRepo)
# Museum-Project

## Project Overview:
This project was assigned in my Software Engineering Practices for Data Management course in Fall 2022. It consisted of creating an SQL file to initialize and fill a MYSQL database, and then create a terminal based python program to access this database. The premise of the project was to create a database for a museum that could hold data on art objects, artists, collections, exhibits, and more.

## To Do list:
- modify this file to include your group members information and tasks assigned per each
- modify this file to include any notes on how to use and run the program
- include any features you have added beyond the minimum requirements in a features list

## Organization:
- code folder: contains your main python application code
- sql scripts folder: contains all sql scripts required (database creation and initialization, sql script with query tasks in the handout, etc...)
- database design folder: EERD and relational schema
- optional data folder: has data files that you can sue to load data to your application if you use this optional implementation requirement

## Notes on how to use program
- Guest view will automatically login
- Admin view will use username: 'adm' and password: 'password'
- Data entry view will use username: 'data_entry' and password: 'password'
- You must have the pip module tabulate installed.
- Some tables display very wide, so if you're running through windows command prompt I reccommend disabling wrap text on resize and increasing the screen size buffer width to stop text from going to next line if it exceeds the screen.

## Additional Features/Bonus marks attempted
- Did querys for point 1 bonus mark.
- Added fully custom triggers for delete and updating tables for bonus marks.
- Added access control using SQL commands for bonus marks.
- Added all 3 access levels in the program for bonus mark.

## Group members and who did what

- Brandon McGee (30125635):
    - Drawing of EER Diagram
    - Parts of both table creation and value insertion
    - Parts of writing query code
    - Data insertion, data modification, formatting, small bug fixes in main Python Application
    - Testing of python application and query code

- Eadan Lay (30120015):
    - Relation Schema
    - Database table creation
    - SQL Queries
    - Data initialization
    - SQL review and editing
    - Testing of sql database

- William Fraser (30158991):
    - Review and editing for EER and relational model
    - Parts of both table creation and value insertion
    - triggers
    - access control
    - Guest view, admin view, parts of main
    - some minimal testing


