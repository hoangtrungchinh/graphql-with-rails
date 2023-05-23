# frozen_string_literal: true

class StudentCourse < ActiveRecord::Base
  self.table_name = 'StudentCourses'

  belongs_to :course, class_name: :Course, foreign_key: :CourseId
  belongs_to :student, class_name: :Student, foreign_key: :StudentId
end
