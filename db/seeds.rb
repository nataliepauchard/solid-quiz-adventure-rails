# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Answer.destroy_all
a1 = Answer.create :content => 'Yellow', :correct_answer => false
a2 = Answer.create :content => 'Blue', :correct_answer => true
a3 = Answer.create :content => 'Indigo', :correct_answer => false
a4 = Answer.create :content => 'Silver', :correct_answer => false

a5 = Answer.create :content => 'Green', :correct_answer => true
a6 = Answer.create :content => 'Silver', :correct_answer => false
a7 = Answer.create :content => 'Gold', :correct_answer => false
a8 = Answer.create :content => 'Indigo', :correct_answer => false

puts "#{ Answer.count } answers."

Question.destroy_all
q1 = Question.create :content => 'What colour is the sky?'
q2 = Question.create :content => 'What colour is the grass?'
puts "#{ Question.count } questions"

Topic.destroy_all
t1 = Topic.create :title => 'The Sky', :image => 'https://www.metoffice.gov.uk/binaries/content/gallery/metofficegovuk/hero-images/weather/cloud/cumulus-cloud.jpg'
t2 = Topic.create :title => 'The ground', :image => 'https://www.bulletpoint.com.au/wp-content/uploads/2012/05/Action-on-the-Ground.jpg'

# Associations
puts "Questions and answers"
q1.answers << a1 << a2 << a3 << a4
q2.answers << a5 << a6 << a7 << a8

puts "Topics and Questions"
t1.questions << q1
t2.questions << q2
