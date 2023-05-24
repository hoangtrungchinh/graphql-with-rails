module Queries
  module School
    extend ActiveSupport::Concern

    included do
      field :schools, [Types::Schema::SchoolType], null: false
      def schools
        ::School.all
      end

      field :school, Types::Schema::SchoolType, null: false do
        argument :uid, GraphQL::Types::ID, required: true
      end

      def school(uid:)
        ::School.find_by_uid(uid)
      end
    end
  end
end
