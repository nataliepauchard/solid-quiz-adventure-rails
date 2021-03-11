# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Answer.destroy_all
a1 = Answer.create :content => 'A:  Slapped Robin', :correct_answer => false
a2 = Answer.create :content => 'B:  Robbed a bank', :correct_answer => false
a3 = Answer.create :content => 'C:  Wrestled an alligator', :correct_answer => false
a4 = Answer.create :content => 'D:  Tried to drive drunk', :correct_answer => true

a5 = Answer.create :content => 'A:  Stanley Kubrick', :correct_answer => false
a6 = Answer.create :content => 'B:  Andy Warhol', :correct_answer => true
a7 = Answer.create :content => 'C:  Roman Polanski', :correct_answer => false
a8 = Answer.create :content => 'D:  Mel Brooks', :correct_answer => false

a9 = Answer.create :content => 'A:  A mob ', :correct_answer => false
a10 = Answer.create :content => 'B:  A gang', :correct_answer => false
a11 = Answer.create :content => 'C:  A mannor', :correct_answer => false
a12 = Answer.create :content => 'D:  All of the above', :correct_answer => true

a13 = Answer.create :content => 'A:  They gang up on it ', :correct_answer => false
a14 = Answer.create :content => 'B:  They run into their burrows ', :correct_answer => false
a15 = Answer.create :content => 'C:  They pretend to be dead', :correct_answer => false
a16 = Answer.create :content => 'D:  All of the above', :correct_answer => true

a17 = Answer.create :content => 'A:  10 million years', :correct_answer => false
a18 = Answer.create :content => 'B:  100 million years', :correct_answer => true
a19 = Answer.create :content => 'C:  300 years', :correct_answer => false
a20 = Answer.create :content => 'D:  10,000 years', :correct_answer => false

a21 = Answer.create :content => 'A:  Shelly', :correct_answer => false
a22 = Answer.create :content => 'B:  Dudey', :correct_answer => false
a23 = Answer.create :content => 'C:  Crush', :correct_answer => true
a24 = Answer.create :content => 'D:  Squirm', :correct_answer => false

puts "#{ Answer.count } answers."

Question.destroy_all
q1 = Question.create :content => 'Q1: What did Batman do in the very first episode of the 1960s Batman TV show?'
q2 = Question.create :content => 'Q2: Who produced and directed the 1964 film Batman Dracula?'
q3 = Question.create :content => 'Q1: What is the correct name for a group of meerkats?'
q4 = Question.create :content => 'Q2: If a snake threatens a group of meerkats, how do they typically react?'
q5 = Question.create :content => 'Q1: How long have turtles been on this planet?'
q6 = Question.create :content => 'Q2: What is the surfer dude turtle called in Finding Nemo?'
puts "#{ Question.count } questions"

Topic.destroy_all
t1 = Topic.create :title => 'Batman', :image => 'http://assets1.ignimgs.com/2018/03/24/batmanninja-blogroll-1521931539202.jpg'
t2 = Topic.create :title => 'Meerkats', :image => 'https://images.macmillan.com/folio-assets/macmillan_us_frontbookcovers_350W/9781250046673.jpg'
t3 = Topic.create :title => 'Turtles', :image => 'https://www.beano.com/wp-content/uploads/legacy/42864_iStock-834977064.jpg?resize=768%2C512&quality=76&strip=all'

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
