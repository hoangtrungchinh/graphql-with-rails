module Types
  module Input
    class Corporation < Types::BaseInputObject
      description "Attributes for creating or updating a corporation"

      argument :uid, String, required: false
      argument :password, String
      argument :name, String
      argument :nameKana, String
      argument :AddressId, Integer, required: false
      argument :phone, String
      argument :frozen, Boolean, required: false
    end
  end
end
