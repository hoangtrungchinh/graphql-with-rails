# frozen_string_literal: true

class School < ActiveRecord::Base
  self.table_name = 'Schools'

  belongs_to :address, class_name: :Address, foreign_key: :AddressId
  belongs_to :brand, class_name: :Brand, foreign_key: :BrandId

  has_many :students, class_name: :Student, foreign_key: :SchoolId
  has_many :viewers, class_name: :Viewer, foreign_key: :SchoolId

  has_many :school_courses, class_name: :SchoolCourse, foreign_key: :SchoolId
  has_many :courses, class_name: :Course, through: :school_courses
end
