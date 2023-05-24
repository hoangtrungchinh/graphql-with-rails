module Queries
  module Brand
    extend ActiveSupport::Concern

    included do
      field :brands, [Types::Schema::BrandType], null: false
      def brands
        ::Brand.all
      end

      field :brand, Types::Schema::BrandType, null: false do
        argument :uid, GraphQL::Types::ID, required: true
      end

      def brand(uid:)
        ::Brand.find_by_uid(uid)
      end
    end
  end
end
