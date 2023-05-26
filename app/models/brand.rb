# frozen_string_literal: true

# == Schema Information
#
# Table name: Brands
#
#  id            :integer          not null, primary key
#  uid           :string(255)      not null
#  password      :string(255)
#  name          :string(255)      not null
#  nameKana      :string(255)      not null
#  AddressId     :integer
#  phone         :string(255)
#  frozen        :boolean          default(FALSE), not null
#  CorporationId :integer
#  createdAt     :datetime         not null
#  updatedAt     :datetime         not null
#
class Brand < ActiveRecord::Base
  self.table_name = 'Brands'

  belongs_to :address, class_name: :Address, foreign_key: :AddressId
  belongs_to :corporation, class_name: :Corporation, foreign_key: :CorporationId

  has_many :students, class_name: :Student, foreign_key: :BrandId
  has_many :schools, class_name: :School, foreign_key: :BrandId
end
