# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "Fri", email: "fri@dos.com", password: "890")
User.create(first_name: "Eve", email: "eve@dos.com", password: "890")
User.create(first_name: "Max", email: "max@dos.com", password: "890")
Medication.create(name_strength: "Zantac-25", frequency: "daily", administration_route: "oral")
Medication.create(name_strength: "Humulin-25", frequency: "Three times a day.", administration_route: "subcutaneous")
Complication.create(complication_severity: 5, complication_duration: "1 hour", complication_description: "Muscle tiredness", completely_resolved: "True", medication_id: "1", user_id: "1" )
Complication.create(complication_severity: 7, complication_duration: "2 days.", complication_description: "Nausea", completely_resolved: "False", medication_id: "1", user_id: "2" )
Complication.create(complication_severity: 3, complication_duration: "5 hours.", complication_description: "Loss of appetite.", completely_resolved: "True", medication_id: "2", user_id: "1" )
Complication.create(complication_severity: 4, complication_duration: "12 hours", complication_description: "Sweating.", completely_resolved: "False", medication_id: "2", user_id: "2" )