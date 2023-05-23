# frozen_string_literal: true

class Book < ActiveRecord::Base
  self.table_name = 'Books'

  belongs_to :teaching_material, class_name: :TeachingMaterial, foreign_key: :TeachingMaterialId

  has_many :courses, class_name: :Course, foreign_key: :BookId
  has_many :book_chapters, class_name: :BookChapter, foreign_key: :BookId
end
