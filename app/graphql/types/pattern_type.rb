module Types
  class PatternType < Types::BaseObject
    field :id, ID, null: false
    field :brand, String, null: false
    field :number, String, null: false
    field :front_pic, String, null: true
    field :back_pic, String, null: true

    field :projects, [Types::ProjectType], null: false
    field :users, [Types::UserType], null: false
  end
end
