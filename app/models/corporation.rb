# frozen_string_literal: true

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
