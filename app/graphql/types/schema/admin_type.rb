# frozen_string_literal: true

module Types
  module Schema
    class AdminType < Types::BaseObject
      field :id, ID, null: false
      field :uid, String, null: false
      field :email, String
      field :password, String
      field :role, String, null: false
      field :resetToken, String
      field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
      field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
