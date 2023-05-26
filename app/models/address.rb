# frozen_string_literal: true

# == Schema Information
#
# Table name: Addresses
#
#  id         :integer          not null, primary key
#  postalCode :string(255)
#  state      :string(255)
#  city       :string(255)
#  street     :string(255)
#  createdAt  :datetime         not null
#  updatedAt  :datetime         not null
#
class Address < ActiveRecord::Base
  self.table_name = 'Addresses'
end
