# frozen_string_literal: true

module Types
  module Schema
    class CorporationType < Types::BaseObject
      field :id, ID, null: false
      field :uid, String, null: false
      field :password, String
      field :name, String, null: false
      field :nameKana, String, null: false
      field :AddressId, Integer
      field :phone, String
      field :frozen, Boolean, null: false
      field :brands, [Types::Schema::BrandType], 'Returns all brands'

      field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
      field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
