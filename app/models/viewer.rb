# frozen_string_literal: true

# == Schema Information
#
# Table name: Viewers
#
#  id                 :integer          not null, primary key
#  uid                :string(255)      not null
#  SchoolId           :integer
#  TeachingMaterialId :integer
#  billingStatus      :enum             default("billable")
#  password           :string(255)      not null
#  deviceCode         :string(255)
#  frozen             :boolean          default(FALSE), not null
#  createdAt          :datetime         not null
#  updatedAt          :datetime         not null
#
class Viewer < ActiveRecord::Base
  self.table_name = 'Viewers'

  belongs_to :brand, class_name: :Brand, foreign_key: :BrandId
  belongs_to :corporation, class_name: :Corporation, foreign_key: :CorporationId
  belongs_to :school, class_name: :School, foreign_key: :SchoolId
  belongs_to :teaching_material, class_name: :TeachingMaterial, foreign_key: :TeachingMaterialId
end
