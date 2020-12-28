module Mutations
  class UpdatePattern < BaseMutation
    argument :id, ID, required: true
    argument :pattern_input, Types::PatternInputType, required: true

    type Types::PatternType

    def resolve(id:, pattern_input:)
      if context[:current_user].nil?
        raise GraphQL::ExecutionError,
        'You need to sign in to perform this action'
      end

      pattern = Pattern.find(id)

      if pattern.update(
        brand: pattern_input.brand,
        number: pattern_input.number,
        front_pic: pattern_input.front_pic,
        back_pic: pattern_input.back_pic
      )
        pattern
      else
        raise GraphQL::ExecutionError, pattern.errors.full_messages[0]
      end
    end
  end
end
