module Types
  class MutationType < Types::BaseObject
    field :create_fabric, mutation: Mutations::CreateFabric
    field :create_floss, mutation: Mutations::CreateFloss
    field :create_needle, mutation: Mutations::CreateNeedle
    field :create_notion, mutation: Mutations::CreateNotion

    field :create_pattern, mutation: Mutations::CreatePattern
    field :update_pattern, mutation: Mutations::UpdatePattern
    field :destroy_pattern, mutation: Mutations::DestroyPattern

    field :create_my_project, mutation: Mutations::CreateMyProject
    field :create_user, mutation: Mutations::CreateUser
    field :create_yarn, mutation: Mutations::CreateYarn
    field :signin_user, mutation: Mutations::SignInUser
  end
end
