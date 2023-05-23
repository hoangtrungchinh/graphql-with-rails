# frozen_string_literal: true

class TeachingMaterial < ActiveRecord::Base
  self.table_name = 'TeachingMaterials'

  has_many :juku_news, class_name: :JukuNews, foreign_key: :TeachingMaterialId
  has_many :books, class_name: :Book, foreign_key: :TeachingMaterialId
  has_many :news, class_name: :News, foreign_key: :TeachingMaterialId
  has_many :viewers, class_name: :Viewer, foreign_key: :TeachingMaterialId
end
