# frozen_string_literal: true

module Types
  class NewsType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :description, String
    field :imageFileName, String
    field :imgTitle, String
    field :link, String
    field :linkTitle, String
    field :isForAll, Boolean
    field :startDisplayDateTime, GraphQL::Types::ISO8601DateTime, null: false
    field :CorporationId, Integer
    field :TeachingMaterialId, Integer
    field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
    field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
    field :BrandId, Integer
  end
end
