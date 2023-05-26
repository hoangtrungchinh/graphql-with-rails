# frozen_string_literal: true

# == Schema Information
#
# Table name: News
#
#  id                   :integer          not null, primary key
#  title                :string(255)
#  description          :text
#  imageFileName        :string(255)
#  imgTitle             :string(255)
#  link                 :string(2000)
#  linkTitle            :string(255)
#  isForAll             :boolean
#  startDisplayDateTime :datetime         not null
#  CorporationId        :integer
#  TeachingMaterialId   :integer
#  createdAt            :datetime         not null
#  updatedAt            :datetime         not null
#  BrandId              :integer
#
class News < ActiveRecord::Base
  self.table_name = 'News'

  belongs_to :corporation, class_name: :Corporation, foreign_key: :CorporationId
  belongs_to :teaching_material, class_name: :TeachingMaterial, foreign_key: :TeachingMaterialId
end
