# frozen_string_literal: true

module Types
  class TeachingMaterialType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :code, String, null: false
    field :position, Integer, null: false
    field :additionalViewerPrice, Integer
    field :defaultViewerPrice, Integer
    field :price, Integer
    field :comingSoon, Boolean, null: false
    field :automaticRenew, Boolean, null: false
    field :imageFileName, String
    field :description, String
    field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
    field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
  end
end
