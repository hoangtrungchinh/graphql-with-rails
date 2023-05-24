# frozen_string_literal: true

module Types
  class JukuNewsType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :description, String
    field :imageFileName, String
    field :imgTitle, String
    field :link, String
    field :linkTitle, String
    field :pdfLink, String
    field :pdfTitle, String
    field :pdfFileSize, String
    field :isForAll, Boolean
    field :startDisplayDateTime, GraphQL::Types::ISO8601DateTime
    field :TeachingMaterialId, Integer
    field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
    field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
  end
end
