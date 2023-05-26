# frozen_string_literal: true

# == Schema Information
#
# Table name: Books
#
#  id                 :integer          not null, primary key
#  code               :string(255)      not null
#  position           :integer          not null
#  comingSoon         :boolean          default(FALSE), not null
#  isMain             :boolean          not null
#  TeachingMaterialId :integer
#  name               :string(255)      not null
#  description        :text
#  imageFileName      :string(255)
#  createdAt          :datetime         not null
#  updatedAt          :datetime         not null
#
class Book < ActiveRecord::Base
  self.table_name = 'Books'

  belongs_to :teaching_material, class_name: :TeachingMaterial, foreign_key: :TeachingMaterialId

  has_many :courses, class_name: :Course, foreign_key: :BookId
  has_many :book_chapters, class_name: :BookChapter, foreign_key: :BookId
end
