# frozen_string_literal: true

module Types
  module Schema
    class StudentType < Types::BaseObject
      field :id, ID, null: false
      field :uid, String, null: false
      field :SchoolId, Integer
      field :GenderId, Integer
      field :SchoolYearId, Integer
      field :firstName, String, null: false
      field :lastName, String, null: false
      field :firstNameKana, String, null: false
      field :lastNameKana, String, null: false
      field :fullName, String, null: false
      field :fullNameKana, String, null: false
      field :password, String, null: false
      field :deviceCode, String
      field :frozen, Boolean, null: false
      field :removed, Boolean, null: false
      field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
      field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
