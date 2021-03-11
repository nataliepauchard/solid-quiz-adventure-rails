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

a5 = Answer.create :content => 'Gas', :correct_answer => true
a6 = Answer.create :content => 'Glitter', :correct_answer => false
a7 = Answer.create :content => 'Gold', :correct_answer => false
a8 = Answer.create :content => 'Garbage', :correct_answer => false

a9 = Answer.create :content => 'Grass', :correct_answer => false
a10 = Answer.create :content => 'Carbon', :correct_answer => false
a11 = Answer.create :content => 'Basalt and Granite', :correct_answer => true
a12 = Answer.create :content => 'Water', :correct_answer => false

a13 = Answer.create :content => '1988', :correct_answer => false
a14 = Answer.create :content => '2005', :correct_answer => true
a15 = Answer.create :content => '2020', :correct_answer => false
a16 = Answer.create :content => '1980', :correct_answer => false

a17 = Answer.create :content => 'Rocks', :correct_answer => false
a18 = Answer.create :content => 'Silicon, Oxygen, Iron, and Magnesium', :correct_answer => true
a19 = Answer.create :content => 'Water', :correct_answer => false
a20 = Answer.create :content => 'Gas', :correct_answer => false

a21 = Answer.create :content => '10 million km', :correct_answer => false
a22 = Answer.create :content => '200 million km', :correct_answer => false
a23 = Answer.create :content => '44 thousand km', :correct_answer => false
a24 = Answer.create :content => '4 billion km', :correct_answer => true

puts "#{ Answer.count } answers."

Question.destroy_all
q1 = Question.create :content => 'What colour is the sky?'
q2 = Question.create :content => 'What are stars made of?'
q3 = Question.create :content => 'What is the Earth made of?'
q4 = Question.create :content => 'When was the last Earquake in Japan?'
q5 = Question.create :content => 'What is Mars made of?'
q6 = Question.create :content => 'How far is Jupitor from Earth?'
puts "#{ Question.count } questions"

Topic.destroy_all
t1 = Topic.create :title => 'The Sky', :image => 'https://www.metoffice.gov.uk/binaries/content/gallery/metofficegovuk/hero-images/weather/cloud/cumulus-cloud.jpg'
t2 = Topic.create :title => 'The Earth', :image => 'https://www.bulletpoint.com.au/wp-content/uploads/2012/05/Action-on-the-Ground.jpg'
t3 = Topic.create :title => 'The Planets', :image => 'https://www.bulletpoint.com.au/wp-content/uploads/2012/05/Action-on-the-Ground.jpg'

# Associations
puts "Questions and answers"
q1.answers << a1 << a2 << a3 << a4
q2.answers << a5 << a6 << a7 << a8
q3.answers << a9 << a10 << a11 << a12
q4.answers << a13 << a14 << a15 << a16
q5.answers << a17 << a18 << a19 << a20
q6.answers << a21 << a22 << a23 << a24


puts "Topics and Questions"
t1.questions << q1 << q2
t2.questions << q3 << q4
t3.questions << q5 << q6
