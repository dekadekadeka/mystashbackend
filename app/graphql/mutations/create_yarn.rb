module Mutations
  class CreateYarn < BaseMutation  
      argument :brand, String, required: true
      argument :name, String, required: true
      argument :color, String, required: true
      argument :size, String, required: false
      argument :lot, String, required: false
      argument :pic, String, required: false

    type Types::YarnType

    def resolve(brand: nil, name: nil, color: nil, size: nil, lot: nil, pic: nil)
      if context[:current_user].nil?
        raise GraphQL::ExecutionError,
              "You need to sign in to perform this action"
      end

      Yarn.create!(
        brand: brand,
        name: name,
        color: color,
        size: size,
        lot: lot,
        pic: pic,
        user: context[:current_user]
      )
    end
  end
end