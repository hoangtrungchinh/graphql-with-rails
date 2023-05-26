# frozen_string_literal: true

# == Schema Information
#
# Table name: SchoolYears
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  createdAt   :datetime         not null
#  updatedAt   :datetime         not null
#
class SchoolYear < ActiveRecord::Base
  self.table_name = 'SchoolYears'

  has_many :students, class_name: :Student, foreign_key: :SchoolYearId
end
