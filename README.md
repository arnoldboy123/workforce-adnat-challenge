# README

## Instructions
To run this app, use `git clone <SSH key>` to download the codes. Then, you can run the app via localhost by typing in `rails server` in your local terminal.
You will need to ensure rails is installed in your local machine and you might need to run `bundle install` to ensure everything can run smoothly

## Features
The feature of this app includes:
- Sign up and Sign in
- Edit your user details
- Create an organisation or join an organisation if user is not in an organisation
- View the shift table of the organisation
- Create shifts for themselves
- Update and delete their own shift
- Leave their organisation (shifts will be permanently destroyed when user leaves)
- The app will flag whether a shift is overnight

## Details
#### Additional gems used
- simple_form
- devise
#### Database
- Sqlite3

## Caveat
- organisation_id in the user table is not a database reference since it is a 0 or 1 to many relationship, using `t.references :organisation, foreign_key: true` will create problems where organisation id is mandatory
