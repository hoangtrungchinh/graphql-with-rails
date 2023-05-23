# frozen_string_literal: true

class News < ActiveRecord::Base
  self.table_name = 'News'

  belongs_to :corporation, class_name: :Corporation, foreign_key: :CorporationId
  belongs_to :teaching_material, class_name: :TeachingMaterial, foreign_key: :TeachingMaterialId
end
