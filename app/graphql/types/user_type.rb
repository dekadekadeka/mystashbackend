module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :name, String, null: false
    field :username, String, null: false
    field :fabrics_count, Integer, null: true
    field :flosses_count, Integer, null: true
    field :needles_count, Integer, null: true
    field :notions_count, Integer, null: true
    field :patterns_count, Integer, null: true
    field :yarns_count, Integer, null: true

    field :fabrics, [Types::FabricType], null: false
    field :flosses, [Types::FlossType], null: false
    field :my_projects, [Types::MyProjectType], null: false
    field :needles, [Types::NeedleType], null: false
    field :notions, [Types::NotionType], null: false
    field :patterns, [Types::PatternType], null: false
    field :yarns, [Types::YarnType], null: false
  end
end
