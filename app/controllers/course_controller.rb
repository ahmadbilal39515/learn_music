class CourseController < ApplicationController
  WOTG_VIDEO_ID = 'YMBa_wi-zKI'

  before_action :authenticate_user!

  def show
    @video_id = 'a0nikjRCmWY'
    @course = course
    @lesson = lesson
  end

  def index
    @courses = current_user.courses
  end

  private

  def course
    @course = Course.find(params[:id])
  end
  def lesson
    lessons = course.course_modules.first.lessons
    lesson_id = params[:lesson_id] || lessons.first.id
    @lesson ||= Lesson.find(lesson_id)
  end
end
