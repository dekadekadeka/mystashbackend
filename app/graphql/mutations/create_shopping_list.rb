module Mutations
  class CreateShoppingList < BaseMutation  
    argument :name, String, required: true

    # argument :patterns, [Types::PatternType], required: false
    # argument :yarns, [Types::YarnType], required: false
    # argument :notions, [Types::NotionType], required: false
    # argument :fabrics, [Types::FabricType], required: false
    # argument :needles, [Types::NeedleType], required: false
    # argument :flosses, [Types::FlossType], required: false

    type Types::ShoppingListType

    def resolve(name: nil
      # patterns: nil, yarns: nil, notions: nil, fabrics: nil, needles: nil, flosses: nil
    )
      ShoppingList.create!(
        name: name,
        # patterns: patterns,
        # yarns: yarns,
        # notions: notions,
        # fabrics: fabrics,
        # needles: needles,
        # flosses: flosses,
        user: context[:current_user]
      )
    end
  end
end