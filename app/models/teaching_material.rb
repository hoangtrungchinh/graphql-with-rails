# frozen_string_literal: true

# == Schema Information
#
# Table name: TeachingMaterials
#
#  id                    :integer          not null, primary key
#  name                  :string(255)      not null
#  code                  :string(255)      not null
#  position              :integer          not null
#  additionalViewerPrice :integer
#  defaultViewerPrice    :integer
#  price                 :integer          default(0)
#  comingSoon            :boolean          default(FALSE), not null
#  automaticRenew        :boolean          default(FALSE), not null
#  imageFileName         :string(255)
#  description           :text
#  createdAt             :datetime         not null
#  updatedAt             :datetime         not null
#
class TeachingMaterial < ActiveRecord::Base
  self.table_name = 'TeachingMaterials'

  has_many :juku_news, class_name: :JukuNews, foreign_key: :TeachingMaterialId
  has_many :books, class_name: :Book, foreign_key: :TeachingMaterialId
  has_many :news, class_name: :News, foreign_key: :TeachingMaterialId
  has_many :viewers, class_name: :Viewer, foreign_key: :TeachingMaterialId
end
