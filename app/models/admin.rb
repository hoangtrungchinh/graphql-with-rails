# frozen_string_literal: true

# == Schema Information
#
# Table name: Admins
#
#  id         :integer          not null, primary key
#  uid        :string(255)      not null
#  email      :string(255)
#  password   :string(255)
#  role       :string(255)      default("tie"), not null
#  resetToken :string(255)
#  createdAt  :datetime         not null
#  updatedAt  :datetime         not null
#
class Admin < ActiveRecord::Base
  self.table_name = 'Admins'
end
