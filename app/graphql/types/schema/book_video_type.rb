# frozen_string_literal: true

module Types
  module Schema
    class BookVideoType < Types::BaseObject
      field :id, ID, null: false
      field :code, Integer, null: false
      field :name, String, null: false
      field :description, String
      field :BookChapterId, Integer
      field :fileName, String
      field :duration, String
      field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
      field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
