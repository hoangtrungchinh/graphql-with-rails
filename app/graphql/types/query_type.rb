module Types
  class QueryType < Types::BaseObject
    field :brands, [Types::Schema::BrandType], null: false

    def brands
      Brand.all
    end
  end
end
