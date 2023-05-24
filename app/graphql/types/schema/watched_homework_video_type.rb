# frozen_string_literal: true

module Types
  module Types
    class WatchedHomeworkVideoType < Types::BaseObject
      field :id, ID, null: false
      field :StudentId, Integer
      field :HomeworkVideoId, Integer
      field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
      field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
