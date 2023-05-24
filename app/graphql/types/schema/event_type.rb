# frozen_string_literal: true

module Types
  module Schema
    class EventType < Types::BaseObject
      field :id, ID, null: false
      field :title, String, null: false
      field :thumbnailFileName, String
      field :zoomLink, String
      field :summary, String
      field :heading, String
      field :description, String
      field :imageFileName1, String
      field :imageFileName2, String
      field :imageFileName3, String
      field :imageFileName4, String
      field :imgCaption1, String
      field :imgCaption2, String
      field :imgCaption3, String
      field :imgCaption4, String
      field :youtubeLink, String
      field :notes, String
      field :googleFormLink, String
      field :targetAudience, String
      field :eventStartDateTime, GraphQL::Types::ISO8601DateTime, null: false
      field :eventEndDateTime, GraphQL::Types::ISO8601DateTime, null: false
      field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
      field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
      field :imgPosition1, Integer
      field :imgPosition2, Integer
      field :imgPosition3, Integer
      field :imgPosition4, Integer
    end
  end
end
