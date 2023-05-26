# frozen_string_literal: true

module Types
  module Schema
    class ZoomLessonType < Types::BaseObject
      field :id, ID, null: false
      field :zoomLink, String, null: false
      field :zoomTitle, String, null: false
      field :replayFileName, String
      field :startDateTime, GraphQL::Types::ISO8601DateTime, null: false
      field :replayStartDateTime, GraphQL::Types::ISO8601DateTime
      field :endDateTime, GraphQL::Types::ISO8601DateTime, null: false
      field :replayEndDateTime, GraphQL::Types::ISO8601DateTime
      field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
      field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
