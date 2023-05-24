# frozen_string_literal: true

module Types
  class StudentCourseType < Types::BaseObject
    field :id, ID, null: false
    field :StudentId, Integer
    field :CourseId, Integer
    field :billingStatus, Types::EnumType
    field :state, String, null: false
    field :startDate, GraphQL::Types::ISO8601Date
    field :stopDate, GraphQL::Types::ISO8601Date
    field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
    field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
  end
end
