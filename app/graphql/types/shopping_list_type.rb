module Types
  class ShoppingListType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    
    field :patterns, [Types::PatternType], null: true
    field :yarns, [Types::YarnType], null: true
    field :notions, [Types::NotionType], null: true
    field :fabrics, [Types::FabricType], null: true
    field :needles, [Types::NeedleType], null: true
    field :flosses, [Types::FlossType], null: true
    field :user, Types::UserType, null: false
  end
end
