# frozen_string_literal: true

module Types
  module Schema
    class BookType < Types::BaseObject
      field :id, ID, null: false
      field :code, String, null: false
      field :position, Integer, null: false
      field :comingSoon, Boolean, null: false
      field :isMain, Boolean, null: false
      field :TeachingMaterialId, Integer
      field :name, String, null: false
      field :description, String
      field :imageFileName, String
      field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
      field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
