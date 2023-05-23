# frozen_string_literal: true

class Viewer < ActiveRecord::Base
  self.table_name = 'Viewers'

  belongs_to :brand, class_name: :Brand, foreign_key: :BrandId
  belongs_to :corporation, class_name: :Corporation, foreign_key: :CorporationId
  belongs_to :school, class_name: :School, foreign_key: :SchoolId
  belongs_to :teaching_material, class_name: :TeachingMaterial, foreign_key: :TeachingMaterialId
end
