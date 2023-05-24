# frozen_string_literal: true

module Types
  class SchoolCourseType < Types::BaseObject
    field :id, ID, null: false
    field :SchoolId, Integer
    field :CourseId, Integer
    field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
    field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
  end
end
