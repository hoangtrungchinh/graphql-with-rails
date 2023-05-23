# frozen_string_literal: true

class SchoolCourse < ActiveRecord::Base
  self.table_name = 'SchoolCourses'

  belongs_to :course, class_name: :Course, foreign_key: :CourseId
  belongs_to :school, class_name: :School, foreign_key: :SchoolId
end
