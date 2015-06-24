# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Place.delete_all

Place.create! name: 'Rhodes Memorial', activity: 'beautiful views', visited: true
Place.create! name: 'Old Biscuit Mill', activity: 'day and night markets', district: 'Woodstock', visited: true
Place.create! name: 'Table Mountain', activity: 'hiking', visited: false
Place.create! name: 'Sababa', activity: 'restaurant', visited: true
Place.create! name: 'Lions Head', activity: 'hiking', visited: true
Place.create! name: 'Waterfront', activity: 'shopping, dining', visited: true