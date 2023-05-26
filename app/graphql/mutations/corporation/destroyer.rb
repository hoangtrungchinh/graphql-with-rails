# frozen_string_literal: true

module Mutations
  module Corporation
    class Destroyer < BaseMutation
      description "Deletes a corporation by UID"

      field :corporation, Types::Schema::CorporationType, null: false

      argument :uid, ID, required: true

      def resolve(uid:)
        corporation = ::Corporation.find_by_uid!(uid)
        raise GraphQL::ExecutionError.new "Error deleting corporation", extensions: corporation.errors.to_hash unless corporation.destroy

        { corporation: corporation }
      end
    end
  end
end
