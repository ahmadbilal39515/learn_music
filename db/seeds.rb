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
  password: 'Passowrd1',
  password_confirmation: 'Passowrd1'
)

#####################
# COURSE ONE
#####################
course_one = Course.create(name: 'Course 1')

course_one_module_one = CourseModule.create(name: 'module 1', course: course_one)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_one)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_one)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_one)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_one)

course_one_module_two = CourseModule.create(name: 'module 2', course: course_one)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_two)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_two)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_two)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_two)

course_one_module_three = CourseModule.create(name: 'module 3', course: course_one)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_three)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_three)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_three)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_three)

course_one_module_four = CourseModule.create(name: 'module 4', course: course_one)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_four)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_four)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_four)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_four)

course_one_module_five = CourseModule.create(name: 'module 5', course: course_one)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_five)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_five)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_five)
Lesson.create(name: Faker::Book.title, course_module: course_one_module_five)
#####################
# COURSE ONE
#####################

#####################
# COURSE TWO
#####################
course_two = Course.create(name: 'Course 2')

course_two_module_one = CourseModule.create(name: 'module 1', course: course_two)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_one)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_one)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_one)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_one)

course_two_module_two = CourseModule.create(name: 'module 2', course: course_two)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_two)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_two)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_two)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_two)

course_two_module_three = CourseModule.create(name: 'module 3', course: course_two)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_three)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_three)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_three)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_three)

course_two_module_four = CourseModule.create(name: 'module 4', course: course_two)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_four)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_four)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_four)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_four)

course_two_module_five = CourseModule.create(name: 'module 5', course: course_two)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_five)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_five)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_five)
Lesson.create(name: Faker::Book.title, course_module: course_two_module_five)
#####################
# COURSE TWO
#####################

#####################
# COURSE THREE
#####################
course_three = Course.create(name: 'Course 3', is_pro: true)

course_three_module_one = CourseModule.create(name: 'module 1', course: course_three)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_one)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_one)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_one)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_one)

course_three_module_two = CourseModule.create(name: 'module 2', course: course_three)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_two)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_two)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_two)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_two)

course_three_module_three = CourseModule.create(name: 'module 3', course: course_three)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_three)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_three)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_three)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_three)

course_three_module_four = CourseModule.create(name: 'module 4', course: course_one)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_four)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_four)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_four)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_four)

course_three_module_five = CourseModule.create(name: 'module 5', course: course_three)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_five)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_five)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_five)
Lesson.create(name: Faker::Book.title, course_module: course_three_module_five)
#####################
# COURSE TWO
#####################

#####################
# COURSE FOUR
#####################
course_four = Course.create(name: 'Course 4', is_pro: true)

course_four_module_one = CourseModule.create(name: 'module 1', course: course_four)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_one)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_one)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_one)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_one)

course_four_module_two = CourseModule.create(name: 'module 2', course: course_four)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_two)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_two)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_two)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_two)

course_four_module_three = CourseModule.create(name: 'module 3', course: course_four)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_three)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_three)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_three)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_three)

course_four_module_four = CourseModule.create(name: 'module 4', course: course_four)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_four)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_four)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_four)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_four)

course_four_module_five = CourseModule.create(name: 'module 5', course: course_four)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_five)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_five)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_five)
Lesson.create(name: Faker::Book.title, course_module: course_four_module_five)
#####################
# COURSE FOUR
#####################

