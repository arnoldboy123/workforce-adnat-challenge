# README

## Instructions
To run this app, use `git clone <SSH key>` to download the codes. Then, you can run the app via localhost by typing in `rails server` in your local terminal.
You will need to ensure rails is installed in your local machine and you might need to run `bundle install` to ensure everything can run smoothly

## Caveat
- organisation_id in the user table is not a database reference since it is a 0 or 1 to many relationship, using `t.references :organisation, foreign_key: true` will create problems where organisation id is mandatory
- When user leaves the organisation, existing shifts will still be there
- All users can delete all shifts in their organisation
