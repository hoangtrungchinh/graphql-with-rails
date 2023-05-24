# frozen_string_literal: true

module Types
  class LessonDetailType < Types::BaseObject
    field :id, ID, null: false
    field :ZoomLessonId, Integer
    field :BookChapterId, Integer
    field :CourseId, Integer
    field :mainTitle, String, null: false
    field :subTitle, String, null: false
    field :imageFileName, String
    field :pageNumber, String
    field :description, String
    field :isVisible, Boolean
    field :offlineLessonStartDateTime, GraphQL::Types::ISO8601DateTime
    field :offlineLessonEndDateTime, GraphQL::Types::ISO8601DateTime
    field :startDateTime, GraphQL::Types::ISO8601DateTime
    field :endDateTime, GraphQL::Types::ISO8601DateTime
    field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
    field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
  end
end
