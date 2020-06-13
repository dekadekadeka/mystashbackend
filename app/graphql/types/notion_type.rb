module Types
  class NotionType < Types::BaseObject
    field :id, ID, null: false
    field :brand, String, null: false
    field :size, String, null: true
    field :description, String, null: true
    field :color, String, null: true

    field :user, Types::UserType, null: false
  end
end
