# frozen_string_literal: true

module Types
  module Schema
    class BrandType < Types::BaseObject
      field :id, ID, null: false
      field :uid, String, null: false
      field :password, String
      field :name, String, null: false
      field :nameKana, String, null: false
      field :AddressId, Integer
      field :phone, String
      field :frozen, Boolean, null: false
      field :CorporationId, Integer
      field :corporation, Types::Schema::CorporationType
      field :schools, [Types::Schema::SchoolType], 'Returns all schools'

      field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
      field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
