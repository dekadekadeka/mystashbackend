module Types
  class MutationType < Types::BaseObject
    field :create_pattern, mutation: Mutations::CreatePattern
    field :create_user, mutation: Mutations::CreateUser
    field :signin_user, mutation: Mutations::SignInUser
  end
end
