# README

## Caveat
- organisation_id in the user table is not a database reference since it is a 0 or 1 to many relationship, using `t.references :organisation, foreign_key: true` will create problems where organisation id is mandatory
