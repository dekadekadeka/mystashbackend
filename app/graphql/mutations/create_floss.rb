module Mutations
  class CreateFloss < BaseMutation
    argument :brand, String, required: true
    argument :color, String, required: true
    argument :amount, String, required: false

    type Types::FlossType

    def resolve(brand: nil, color: nil, amount: nil)
      if context[:current_user].nil?
        raise GraphQL::ExecutionError,
          "You need to sign in to perform this action"
      end

      Floss.create!(
        brand: brand,
        color: color,
        amount: amount,
        user: context[:current_user]
      )
    end
  end
end
