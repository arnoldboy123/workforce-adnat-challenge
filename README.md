# README

## Background
This is a backend challenge for to build a simplified version of the Tanda web app as part of workforce.com's recruitment selection process. The focus of this challenge is on creating all the back end functions using `Ruby on Rails`.

## Instructions
To run this app, use `git clone <SSH key>` to download the codes. Then, you can run the app via localhost by typing in `rails server` in your local terminal.
You will need to ensure rails is installed in your local machine and you might need to run `bundle install` to ensure everything can run smoothly

## Features
The user can use this app to:
- Sign up and Sign in
- Edit their user details
- Create an organisation or join an organisation if they are not in an organisation
- View the shift table of the organisation they are in
- Create shifts for themselves
- Update and delete their shifts
- Leave their organisation (shifts will be permanently destroyed when user leaves)
- The app will flag whether a shift is overnight

## Optional challenges implemented
- Edit user details
- Modify and delete shifts

## Details
#### Additional gems used
- simple_form
- devise
#### Database
- Sqlite3

## Caveat
- organisation_id in the user table is not a database reference since it is a 0 or 1 to many relationship, using `t.references :organisation, foreign_key: true` will create problems where organisation id is mandatory
- There hasn't been any front-end styling due to the back-end focused nature of this challenge
