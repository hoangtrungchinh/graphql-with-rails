# frozen_string_literal: true

# == Schema Information
#
# Table name: Genders
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  createdAt   :datetime         not null
#  updatedAt   :datetime         not null
#
class Gender < ActiveRecord::Base
  self.table_name = 'Genders'
end
