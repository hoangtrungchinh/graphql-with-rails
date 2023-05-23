# frozen_string_literal: true

class Handout < ActiveRecord::Base
  self.table_name = 'Handouts'

  belongs_to :corporation, class_name: :Corporation, foreign_key: :CorporationId
end
