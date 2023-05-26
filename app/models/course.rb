# frozen_string_literal: true

# == Schema Information
#
# Table name: Courses
#
#  id                :integer          not null, primary key
#  BookId            :integer
#  nextCourseId      :integer
#  name              :string(255)
#  startDate         :date             not null
#  endDate           :date             not null
#  isHybrid          :boolean          not null
#  showBookVideo     :boolean          not null
#  showZoomLesson    :boolean          not null
#  showHomeworkVideo :boolean          not null
#  CorporationId     :integer
#  createdAt         :datetime         not null
#  updatedAt         :datetime         not null
#
class Course < ActiveRecord::Base
  self.table_name = 'Courses'

  belongs_to :book, class_name: :Book, foreign_key: :BookId
  belongs_to :corporation, class_name: :Corporation, foreign_key: :CorporationId
  belongs_to :next_course, class_name: :Course, foreign_key: :nextCourseId

  has_many :main_courses, class_name: :MainSubCourse, foreign_key: :MainCourseId
  has_many :sub_courses, class_name: :MainSubCourse, foreign_key: :SubCourseId
  has_many :lesson_details, class_name: :LessonDetail, foreign_key: :CourseId

  has_many :school_courses, class_name: :SchoolCourse, foreign_key: :CourseId
  has_many :schools, class_name: :School, through: :school_courses

  has_many :student_courses, class_name: :StudentCourse, foreign_key: :CourseId
  has_many :students, class_name: :Student, through: :student_courses
end
