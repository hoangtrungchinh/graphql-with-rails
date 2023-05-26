module Types
  class MutationType < Types::BaseObject
    field :corporation_create, mutation: Mutations::Corporation::Creator
    field :corporation_update, mutation: Mutations::Corporation::Updater
  end
end
