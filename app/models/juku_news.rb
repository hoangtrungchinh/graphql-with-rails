# frozen_string_literal: true

# == Schema Information
#
# Table name: JukuNews
#
#  id                   :integer          not null, primary key
#  title                :string(255)
#  description          :text
#  imageFileName        :string(255)
#  imgTitle             :string(255)
#  link                 :string(255)
#  linkTitle            :string(255)
#  pdfLink              :string(255)
#  pdfTitle             :string(255)
#  pdfFileSize          :string(255)
#  isForAll             :boolean
#  startDisplayDateTime :datetime
#  TeachingMaterialId   :integer
#  createdAt            :datetime         not null
#  updatedAt            :datetime         not null
#
class JukuNews < ActiveRecord::Base
  self.table_name = 'JukuNews'

  belongs_to :teaching_material, class_name: :TeachingMaterial, foreign_key: :TeachingMaterialId
end
