# frozen_string_literal: true

class JukuNews < ActiveRecord::Base
  self.table_name = 'JukuNews'

  belongs_to :teaching_material, class_name: :TeachingMaterial, foreign_key: :TeachingMaterialId
end
