module Types
  class QueryType < Types::BaseObject
    include Queries::Brand
    include Queries::Corporation
    include Queries::School
  end
end
