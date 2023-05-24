# frozen_string_literal: true

module Types
  class CourseType < Types::BaseObject
    field :id, ID, null: false
    field :BookId, Integer
    field :nextCourseId, Integer
    field :name, String
    field :startDate, GraphQL::Types::ISO8601Date, null: false
    field :endDate, GraphQL::Types::ISO8601Date, null: false
    field :isHybrid, Boolean, null: false
    field :showBookVideo, Boolean, null: false
    field :showZoomLesson, Boolean, null: false
    field :showHomeworkVideo, Boolean, null: false
    field :CorporationId, Integer
    field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
    field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
  end
end
