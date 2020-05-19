# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Applicant.destroy_all
Interviewer.destroy_all
Meeting.destroy_all

ds = Applicant.create(name: "Davis Sargeant", cv: "BA Linguistics", graduation_year: 2013)
as = Applicant.create(name: "Abhinav Sharma", cv: "BS Biochemistry", graduation_year: 2016)

pn = Interviewer.create(name: "Paul Nicholsen", department: "Education", cheer: 5)
sn = Interviewer.create(name: "Shannon Nabors", department: "Vexillology", cheer: 6)

Meeting.create(applicant_id: ds.id, interviewer_id: pn.id, score: 8, date: DateTime.new(2020, 05, 19))
Meeting.create(applicant_id: as.id, interviewer_id: sn.id, score: 9, date: DateTime.new(2020, 05, 15))
