module Types
  class PatternSearchType < Types::BaseObject
    field :count, Integer, null: false
    field :records, [Types::PatternType], null: false
  end
end
