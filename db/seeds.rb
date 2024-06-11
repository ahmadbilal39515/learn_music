# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#####################
# DEVELOPMENT USERS
#####################
User.create(
  email: 'test@test.com',
  password: 'Password1',
  password_confirmation: 'Password1'
)

User.create(
  is_pro: true,
  email: 'pro@test.com',
  password: 'Password1',
  password_confirmation: 'Password1'
)


#####################
# COURSE ONE
#####################
course_one = Course.create(name: 'Course 1')

course_one_module_one = CourseModule.create(name: 'module 1', course: course_one)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_one, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_one_module_one, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_one_module_one, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_one_module_one, youtubeUrl: 'YMBa_wi-zKI')

course_one_module_two = CourseModule.create(name: 'module 2', course: course_one)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_two, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_one_module_two, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_one_module_two, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_one_module_two, youtubeUrl: 'YMBa_wi-zKI')

course_one_module_three = CourseModule.create(name: 'module 3', course: course_one)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_three, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_one_module_three, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_one_module_three, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_one_module_three, youtubeUrl: 'YMBa_wi-zKI')

course_one_module_four = CourseModule.create(name: 'module 4', course: course_one)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_four, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_one_module_four, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_one_module_four, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_one_module_four, youtubeUrl: 'YMBa_wi-zKI')

course_one_module_five = CourseModule.create(name: 'module 5', course: course_one)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_five, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_one_module_five, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_one_module_five, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_one_module_five, youtubeUrl: 'YMBa_wi-zKI')
#####################
# COURSE ONE
#####################

#####################
# COURSE TWO
#####################
course_two = Course.create(name: 'Course 2')

course_two_module_one = CourseModule.create(name: 'module 1', course: course_two)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_one, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_two_module_one, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_two_module_one, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_two_module_one, youtubeUrl: 'YMBa_wi-zKI')

course_two_module_two = CourseModule.create(name: 'module 2', course: course_two)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_two, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_two_module_two, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_two_module_two, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_two_module_two, youtubeUrl: 'YMBa_wi-zKI')

course_two_module_three = CourseModule.create(name: 'module 3', course: course_two)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_three, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_two_module_three, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_two_module_three, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_two_module_three, youtubeUrl: 'YMBa_wi-zKI')

course_two_module_four = CourseModule.create(name: 'module 4', course: course_two)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_four, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_two_module_four, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_two_module_four, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_two_module_four, youtubeUrl: 'YMBa_wi-zKI')

course_two_module_five = CourseModule.create(name: 'module 5', course: course_two)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_five, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_two_module_five, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_two_module_five, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_two_module_five, youtubeUrl: 'YMBa_wi-zKI')
#####################
# COURSE TWO
#####################

#####################
# COURSE THREE
#####################
course_three = Course.create(name: 'Course 3', is_pro: true)

course_three_module_one = CourseModule.create(name: 'module 1', course: course_three)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_one, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_three_module_one, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_three_module_one, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_three_module_one, youtubeUrl: 'YMBa_wi-zKI')

course_three_module_two = CourseModule.create(name: 'module 2', course: course_three)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_two, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_three_module_two, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_three_module_two, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_three_module_two, youtubeUrl: 'YMBa_wi-zKI')

course_three_module_three = CourseModule.create(name: 'module 3', course: course_three)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_three, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_three_module_three, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_three_module_three, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_three_module_three, youtubeUrl: 'YMBa_wi-zKI')

course_three_module_four = CourseModule.create(name: 'module 4', course: course_one)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_four, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_three_module_four, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_three_module_four, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_three_module_four, youtubeUrl: 'YMBa_wi-zKI')

course_three_module_five = CourseModule.create(name: 'module 5', course: course_three)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_five, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_three_module_five, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_three_module_five, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_three_module_five, youtubeUrl: 'YMBa_wi-zKI')
#####################
# COURSE TWO
#####################

#####################
# COURSE FOUR
#####################
course_four = Course.create(name: 'Course 4', is_pro: true)

course_four_module_one = CourseModule.create(name: 'module 1', course: course_four)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_one, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_four_module_one, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_four_module_one, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_four_module_one, youtubeUrl: 'YMBa_wi-zKI')

course_four_module_two = CourseModule.create(name: 'module 2', course: course_four)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_two, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_four_module_two, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_four_module_two, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_four_module_two, youtubeUrl: 'YMBa_wi-zKI')

course_four_module_three = CourseModule.create(name: 'module 3', course: course_four)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_three, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_four_module_three, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_four_module_three, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_four_module_three, youtubeUrl: 'YMBa_wi-zKI')

course_four_module_four = CourseModule.create(name: 'module 4', course: course_four)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_four, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_four_module_four, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_four_module_four, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_four_module_four, youtubeUrl: 'YMBa_wi-zKI')

course_four_module_five = CourseModule.create(name: 'module 5', course: course_four)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_five, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_four_module_five, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_four_module_five, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: Faker::Book.title, course_module: course_four_module_five, youtubeUrl: 'YMBa_wi-zKI')
#####################
# COURSE FOUR
#####################
