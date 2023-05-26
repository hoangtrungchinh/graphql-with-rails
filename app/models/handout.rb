# frozen_string_literal: true

# == Schema Information
#
# Table name: Handouts
#
#  id                   :integer          not null, primary key
#  zipFileName          :string(255)
#  zipTitle             :string(255)
#  startDisplayDateTime :datetime
#  expirationDateTime   :datetime
#  CorporationId        :integer
#  createdAt            :datetime         not null
#  updatedAt            :datetime         not null
#
class Handout < ActiveRecord::Base
  self.table_name = 'Handouts'

  belongs_to :corporation, class_name: :Corporation, foreign_key: :CorporationId
end
