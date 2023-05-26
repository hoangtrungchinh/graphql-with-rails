# frozen_string_literal: true

# == Schema Information
#
# Table name: SchoolCourses
#
#  id        :integer          not null, primary key
#  SchoolId  :integer
#  CourseId  :integer
#  createdAt :datetime         not null
#  updatedAt :datetime         not null
#
class SchoolCourse < ActiveRecord::Base
  self.table_name = 'SchoolCourses'

  belongs_to :course, class_name: :Course, foreign_key: :CourseId
  belongs_to :school, class_name: :School, foreign_key: :SchoolId
end
