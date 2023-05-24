module Queries
  module Corporation
    extend ActiveSupport::Concern

    included do
      field :corporations, [Types::Schema::CorporationType], null: false
      def corporations
        ::Corporation.all
      end

      field :corporation, Types::Schema::CorporationType, null: false do
        argument :uid, GraphQL::Types::ID, required: true
      end

      def corporation(uid:)
        ::Corporation.find_by_uid(uid)
      end
    end
  end
end
