module Types
  class MyProjectType < Types::BaseObject
    field :id, ID, null: false
    field :progress, Int, null: true
    field :name, String, null: false

    field :user, Types::UserType, null: false
  end
end
