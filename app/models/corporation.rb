# frozen_string_literal: true

# == Schema Information
#
# Table name: Corporations
#
#  id        :integer          not null, primary key
#  uid       :string(255)      not null
#  password  :string(255)
#  name      :string(255)      not null
#  nameKana  :string(255)      not null
#  AddressId :integer
#  phone     :string(255)
#  frozen    :boolean          default(FALSE), not null
#  createdAt :datetime         not null
#  updatedAt :datetime         not null
#
class Corporation < ActiveRecord::Base
  self.table_name = 'Corporations'

  belongs_to :address, class_name: :Address, foreign_key: :AddressId

  has_many :handouts, class_name: :Handout, foreign_key: :CorporationId
  has_many :students, class_name: :Student, foreign_key: :CorporationId
  has_many :brands, class_name: :Brand, foreign_key: :CorporationId
  has_many :viewers, class_name: :Viewer, foreign_key: :CorporationId
  has_many :courses, class_name: :Course, foreign_key: :CorporationId
  has_many :news, class_name: :News, foreign_key: :CorporationId
end
