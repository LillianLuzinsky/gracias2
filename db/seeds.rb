# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'eyeris@tpg.com.au', password_digest: BCrypt::Password.create('1234'))
User.create(email: 'hello@hello.com', password_digest: BCrypt::Password.create('1234'))
User.create(email: 'bye@bye.com', password_digest: BCrypt::Password.create('1234'))


Question.create(title: 'what were you grateful for?')
Question.create(title: 'who made you feel grateful?')
Question.create(title: 'how did you show your appreciation?')