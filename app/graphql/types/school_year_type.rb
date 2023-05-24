# frozen_string_literal: true

module Types
  class SchoolYearType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :description, String
    field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
    field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
  end
end
