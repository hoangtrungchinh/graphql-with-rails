# frozen_string_literal: true

module Types
  module Schema
    class HandoutType < Types::BaseObject
      field :id, ID, null: false
      field :zipFileName, String
      field :zipTitle, String
      field :startDisplayDateTime, GraphQL::Types::ISO8601DateTime
      field :expirationDateTime, GraphQL::Types::ISO8601DateTime
      field :CorporationId, Integer
      field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
      field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
