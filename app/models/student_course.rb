# frozen_string_literal: true

# == Schema Information
#
# Table name: StudentCourses
#
#  id            :integer          not null, primary key
#  StudentId     :integer
#  CourseId      :integer
#  billingStatus :enum             default("billable")
#  state         :string(255)      not null
#  startDate     :date
#  stopDate      :date
#  createdAt     :datetime         not null
#  updatedAt     :datetime         not null
#
class StudentCourse < ActiveRecord::Base
  self.table_name = 'StudentCourses'

  belongs_to :course, class_name: :Course, foreign_key: :CourseId
  belongs_to :student, class_name: :Student, foreign_key: :StudentId
end
