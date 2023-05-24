# frozen_string_literal: true

module Types
  module Schema
    class BookChapterType < Types::BaseObject
      field :id, ID, null: false
      field :code, Integer, null: false
      field :BookId, Integer
      field :name, String, null: false
      field :description, String
      field :isVirtual, Boolean, null: false
      field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
      field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
