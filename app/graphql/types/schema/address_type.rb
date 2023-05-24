# frozen_string_literal: true

module Types
  module Schema
    class AddressType < Types::BaseObject
      field :id, ID, null: false
      field :postalCode, String
      field :state, String
      field :city, String
      field :street, String
      field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
      field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
