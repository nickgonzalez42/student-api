# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# #
student1 = Student.create!(first: "Nick", last: "Gonzalez", email: "nick@email.com", phone: "7732099441", bio: "I am a student (:", linkedin: "linkedin.com", twitter: "twitter.com", website: "google.com", github: "github.com", photo: "google.com", password: "password")
student2 = Student.create!(first: "Eddie", last: "Tong", email: "eddie@email.com", phone: "9999999999", bio: "I am ANOTHER student (:", linkedin: "linkedin.com", twitter: "twitter.com", website: "google.com", github: "github.com", photo: "google.com", password: "password")

Education.create!(student_id: student1.id, start: "01/01/01", end: "02/02/02", degree: "Animology", university: "Harvard", details: "BLAHBLAHBLAH")
Education.create!(student_id: student2.id, start: "03/03/03", end: "04/04/04", degree: "Sciencology", university: "Princeton", details: "BLAHBLAHBLAH")
Education.create!(student_id: student1.id, start: "01/01/01", end: "05/05/05", degree: "Crime", university: "The Streets", details: "BLAHBLAHBLAH")
Education.create!(student_id: student2.id, start: "07/07/07", end: "08/08/08", degree: "Rocketology", university: "Cape Canavarel", details: "BLAHBLAHBLAH")

Experience.create!(student_id: student1.id, start: "01/01/01", end: "02/02/02", title: "Bossman", company: "Apple", details: "BLAHBLAHBLAH")
Experience.create!(student_id: student2.id, start: "03/03/03", end: "04/04/04", title: "CEO", company: "Microsoft", details: "BLAHBLAHBLAH")
Experience.create!(student_id: student1.id, start: "11/11/11", end: "12/12/12", title: "Peon", company: "Boeing", details: "BLAHBLAHBLAH")
Experience.create!(student_id: student2.id, start: "13/13/13", end: "14/14/14", title: "CFO", company: "Disney", details: "BLAHBLAHBLAH")

Skill.create!(name: "making bank", student_id: student1.id)
Skill.create!(name: "taking care of business", student_id: student1.id)
Skill.create!(name: "decisions", student_id: student1.id)
Skill.create!(name: "fighting bears", student_id: student2.id)
Skill.create!(name: "killing it 24/7", student_id: student2.id)
Skill.create!(name: "cool", student_id: student2.id)

Capstone.create!(student_id: student1.id, description: "It's an app", url: "website.com", name: "captsone1")
Capstone.create!(student_id: student2.id, description: "It's an app AGAIN", url: "website.net", name: "captsone2")
