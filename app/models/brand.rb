# frozen_string_literal: true

class Brand < ActiveRecord::Base
  self.table_name = 'Brands'

  belongs_to :address, class_name: :Address, foreign_key: :AddressId
  belongs_to :corporation, class_name: :Corporation, foreign_key: :CorporationId

  has_many :students, class_name: :Student, foreign_key: :BrandId
  has_many :schools, class_name: :School, foreign_key: :BrandId
end
