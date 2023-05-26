# frozen_string_literal: true

module Mutations
  module Corporation
    class Creator < BaseMutation
      description "Creates a new corporation"

      field :corporation, Types::Schema::CorporationType, null: false

      argument :attrs, Types::Input::Corporation, required: true

      def resolve(attrs:)
        corporation = ::Corporation.new(**attrs)
        raise GraphQL::ExecutionError.new "Error creating corporation", extensions: corporation.errors.to_hash unless corporation.save

        { corporation: corporation }
      end
    end
  end
end
