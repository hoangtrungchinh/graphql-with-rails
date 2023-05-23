# frozen_string_literal: true

class SchoolYear < ActiveRecord::Base
  self.table_name = 'SchoolYears'

  has_many :students, class_name: :Student, foreign_key: :SchoolYearId
end
