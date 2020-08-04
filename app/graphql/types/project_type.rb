module Types
  class ProjectType < Types::BaseObject
    field :progress, Int, null: false
    field :pattern, Types::PatternType, null: false
    field :user, Types::UserType, null: false
  end
end
