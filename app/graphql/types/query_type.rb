module Types
  class QueryType < Types::BaseObject
    field :brands, [Types::BrandType], null: false

    def brands
      Brand.all
    end
  end
end
