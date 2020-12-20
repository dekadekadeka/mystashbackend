module Types
  class NotionType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :brand, String, null: true
    field :size, String, null: true
    field :description, String, null: true
    field :color, String, null: true
    field :notion_pic, String, null: true

    field :user, Types::UserType, null: false
  end
end
