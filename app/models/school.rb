# frozen_string_literal: true

# == Schema Information
#
# Table name: Schools
#
#  id        :integer          not null, primary key
#  uid       :string(255)      not null
#  password  :string(255)
#  name      :string(255)      not null
#  nameKana  :string(255)      not null
#  AddressId :integer
#  phone     :string(255)
#  frozen    :boolean          default(FALSE), not null
#  BrandId   :integer
#  createdAt :datetime         not null
#  updatedAt :datetime         not null
#
class School < ActiveRecord::Base
  self.table_name = 'Schools'

  belongs_to :address, class_name: :Address, foreign_key: :AddressId
  belongs_to :brand, class_name: :Brand, foreign_key: :BrandId

  has_many :students, class_name: :Student, foreign_key: :SchoolId
  has_many :viewers, class_name: :Viewer, foreign_key: :SchoolId

  has_many :school_courses, class_name: :SchoolCourse, foreign_key: :SchoolId
  has_many :courses, class_name: :Course, through: :school_courses
end
