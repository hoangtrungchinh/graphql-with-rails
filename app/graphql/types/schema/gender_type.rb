# frozen_string_literal: true

module Types
  module Schema
    class GenderType < Types::BaseObject
      field :id, ID, null: false
      field :name, String
      field :description, String
      field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
      field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
