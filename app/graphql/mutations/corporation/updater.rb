# frozen_string_literal: true

module Mutations
  module Corporation
    class Updater < BaseMutation
      description "Updates a corporation by uid"

      field :corporation, Types::Schema::CorporationType, null: false

      argument :uid, ID, required: true
      argument :attrs, Types::Input::Corporation, required: true

      def resolve(uid:, attrs:)
        corporation = ::Corporation.find_by_uid!(uid)
        raise GraphQL::ExecutionError.new "Error updating corporation", extensions: corporation.errors.to_hash unless corporation.update(**attrs)

        { corporation: corporation }
      end
    end
  end
end
