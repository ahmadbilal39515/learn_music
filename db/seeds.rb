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
# Ways of the Guitar Seed
#####################
ways_of_the_guitar_course = Course.create(name: 'Ways of the Guitar', is_pro: true)

introduction_module = CourseModule.create(name: 'introduction', course: ways_of_the_guitar_course)
Lesson.create(name: 'Welcome!', course_module: introduction_module, youtubeUrl: 'a0nikjRCmWY')
Lesson.create(name: 'What can you expect from this course?', course_module: introduction_module, youtubeUrl: 'CJQSu7a_SuU')
Lesson.create(name: 'How to use this course', course_module: introduction_module, youtubeUrl: 'RcUZFZGdN0w')

mindset_module = CourseModule.create(name: 'Mindset', course: ways_of_the_guitar_course)
Lesson.create(name: 'Who do you want to be as a guitar player?', course_module: mindset_module, youtubeUrl: 'AcxolrIRA78')
Lesson.create(name: 'Play guitar don’t work guitar', course_module: mindset_module, youtubeUrl: 'HW9rMrD-c0I')
Lesson.create(name: 'Sing what you play!', course_module: mindset_module, youtubeUrl: 'cpRNExoon3Y')

intervals = CourseModule.create(name: 'Intervals (Raw Materials)', course: ways_of_the_guitar_course)
Lesson.create(name: 'What are intervals and why do I care?', course_module: intervals, youtubeUrl: 'AOpFIH4UOtM')
Lesson.create(name: '2nds', course_module: intervals, youtubeUrl: 'S4yFu9sJKno')
Lesson.create(name: '3rds', course_module: intervals, youtubeUrl: 'P2M4jY_eBLU')
Lesson.create(name: '4ths', course_module: intervals, youtubeUrl: 'EDZUdHYQP1Q')
Lesson.create(name: '5ths', course_module: intervals, youtubeUrl: 'EQRd2hiuSIQ')
Lesson.create(name: '6ths', course_module: intervals, youtubeUrl: 'Yl1STWUVFQE')
Lesson.create(name: '7ths', course_module: intervals, youtubeUrl: 'DVtZp8j_eBs')
Lesson.create(name: 'Octaves', course_module: intervals, youtubeUrl: 'bi0qU5aGPXo')

major_scale = CourseModule.create(name: 'Major Scale (Raw Materials)', course: ways_of_the_guitar_course)
Lesson.create(name: 'Intro to the Major Scale?', course_module: major_scale, youtubeUrl: 'bH2mxCNRZic')
Lesson.create(name: 'The Major Scale', course_module: major_scale, youtubeUrl: 'OckJ__wKa5I')
Lesson.create(name: 'How scales become Keys', course_module: major_scale, youtubeUrl: 'GBpXbItt1ik')

chords = CourseModule.create(name: 'Chords (Raw Materials)', course: ways_of_the_guitar_course)
Lesson.create(name: 'Why you want to learn chords', course_module: chords, youtubeUrl: 'K8fEtcehpoE')
Lesson.create(name: 'Triads', course_module: chords, youtubeUrl: '8uCOACQu5N8')
Lesson.create(name: 'Open Chords', course_module: chords, youtubeUrl: 'FutPEVMG5Hw')
Lesson.create(name: '7th Chords', course_module: chords, youtubeUrl: 'ZDxiCbTujaY')
Lesson.create(name: 'Inversions', course_module: chords, youtubeUrl: 'ZDxiCbTujaY')
Lesson.create(name: 'Intro to Chord Progressions', course_module: chords, youtubeUrl: '1XcbMsercMc')

chord_tones = CourseModule.create(name: 'Chord Tones (Raw Materials)', course: ways_of_the_guitar_course)
Lesson.create(name: 'Why do I need to know chord tones?', course_module: chord_tones, youtubeUrl: '-8X15s07Unc')
Lesson.create(name: 'Major Chord Tones', course_module: chord_tones, youtubeUrl: 'wm6Oq-rjxps')
Lesson.create(name: 'Minor Chord Tones', course_module: chord_tones, youtubeUrl: 'lskYKoF_oaw')
Lesson.create(name: 'Diminished Chord Tones', course_module: chord_tones, youtubeUrl: 'YMBa_wi-zKI')

pentatonic = CourseModule.create(name: 'Pentatonic Scale (Raw Materials)', course: ways_of_the_guitar_course)
Lesson.create(name: 'Why do I care about Pentatonics?', course_module: pentatonic, youtubeUrl: 'APo28rdCKWc')
Lesson.create(name: 'Minor Pentatonic', course_module: pentatonic, youtubeUrl: 'hVJbe-rZqvU')
Lesson.create(name: 'Practical tips for using the Minor pentatonic', course_module: pentatonic, youtubeUrl: 'aO3Fzi6-f5w')
Lesson.create(name: 'Major Pentatonic', course_module: pentatonic, youtubeUrl: '85lvWmcZn-Y')
Lesson.create(name: 'Practical tips for using the Major Pentatonic', course_module: pentatonic, youtubeUrl: 'WLf0fT8ufD8')

major_modes = CourseModule.create(name: 'Modes of the Major Scale (Raw Materials)', course: ways_of_the_guitar_course)
Lesson.create(name: 'Intro to modes', course_module: major_modes, youtubeUrl: 'zciRJhvppAk')
Lesson.create(name: 'Ionian (Major Scale)', course_module: major_modes, youtubeUrl: 'rGyjgd0L-kY')
Lesson.create(name: 'Dorian', course_module: major_modes, youtubeUrl: '5szVrPy-vDU')
Lesson.create(name: 'Phrygian', course_module: major_modes, youtubeUrl: 'wZpd5K03H7o')
Lesson.create(name: 'Lydian', course_module: major_modes, youtubeUrl: 'rbPB8lYaQB8')
Lesson.create(name: 'Mixolydian', course_module: major_modes, youtubeUrl: 'uIrtTDZQ8mQ')
Lesson.create(name: 'Aeolian (Minor Scale)', course_module: major_modes, youtubeUrl: 'XfXqhwmgjOo')
Lesson.create(name: 'Locrian', course_module: major_modes, youtubeUrl: 'bg2ZlNr54Kk')

interval_patterns = CourseModule.create(name: 'Interval Patters (Raw Materials)', course: ways_of_the_guitar_course)
Lesson.create(name: 'Intro to Interval Patterns', course_module: interval_patterns, youtubeUrl: 'xF1gyUwoHDg')
Lesson.create(name: 'Moving through the Major Scale in 2nds', course_module: interval_patterns, youtubeUrl: 'N9vnxDuhkH0')
Lesson.create(name: 'Moving through the Major Scale in 3rds', course_module: interval_patterns, youtubeUrl: '5LHy_tUZ9oM')
Lesson.create(name: 'Moving through the Major Scale in 4ths', course_module: interval_patterns, youtubeUrl: 'YMBa_wi-zKI')
Lesson.create(name: 'Moving through the Major Scale in 5ths', course_module: interval_patterns, youtubeUrl: 'Ics7jUpbQAY')
Lesson.create(name: 'Moving through the Major Scale in 6ths', course_module: interval_patterns, youtubeUrl: 'SICDrJqd6-s')
Lesson.create(name: 'Moving through the Major Scale in 7ths', course_module: interval_patterns, youtubeUrl: 'DYLuMoG1jtk')
Lesson.create(name: 'Moving through the Major Scale in Octaves', course_module: interval_patterns, youtubeUrl: 'XPQtMhmWOmo')

rhythmic_patters = CourseModule.create(name: 'Rhythmic Patterns (Raw Materials)', course: ways_of_the_guitar_course)
Lesson.create(name: 'What are Rhythmic Note Patterns', course_module: chord_tones, youtubeUrl: 'BPAwtpk4Sx8')
Lesson.create(name: 'Patterns Based off Triplets', course_module: rhythmic_patters, youtubeUrl: 'VhFKHii7Pw8')
Lesson.create(name: 'Patterns Based off 16th notes', course_module: rhythmic_patters, youtubeUrl: 'ZRFVnPQ34pM')
Lesson.create(name: 'Patterns Based off Quintuplets', course_module: rhythmic_patters, youtubeUrl: 'KbpX6t5yD9Q')
Lesson.create(name: 'Patterns Based off Sextuplets', course_module: rhythmic_patters, youtubeUrl: 'Gam5c_LXP88')
Lesson.create(name: 'Patterns Based off Septuplets', course_module: rhythmic_patters, youtubeUrl: '')
Lesson.create(name: 'Patterns Based off 32nd notes', course_module: rhythmic_patters, youtubeUrl: '')

song_writing = CourseModule.create(name: 'Song Writing (Creative Outcomes)', course: ways_of_the_guitar_course)
Lesson.create(name: 'Writing your first song!', course_module: song_writing, youtubeUrl: '4yRsbubIqKU')
Lesson.create(name: 'The role of theory in songwriting', course_module: song_writing, youtubeUrl: 'BDDHQ5gljeU')
Lesson.create(name: 'Inspiration', course_module: song_writing, youtubeUrl: 'Qyy4w2pXNqk')

solos = CourseModule.create(name: 'Solo / Improvisation (Creative Outcomes)', course: ways_of_the_guitar_course)
Lesson.create(name: 'What is a guitar solo?', course_module: solos, youtubeUrl: '')

the_end = CourseModule.create(name: 'The End', course: ways_of_the_guitar_course)
Lesson.create(name: 'Where do you go from here?', course_module: the_end, youtubeUrl: '9eLRCFaswNc')
#####################
# Ways of the Guitar Seed
#####################


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
