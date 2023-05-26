# frozen_string_literal: true

module Types
  module Schema
    class ViewerType < Types::BaseObject
      field :id, ID, null: false
      field :uid, String, null: false
      field :SchoolId, Integer
      field :TeachingMaterialId, Integer
      field :billingStatus, String
      field :password, String, null: false
      field :deviceCode, String
      field :frozen, Boolean, null: false
      field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
      field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
