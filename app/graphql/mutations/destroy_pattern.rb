module Mutations
  class DestroyPattern < BaseMutation
    argument :id, ID, required: true

    type Types::PatternType

    def resolve(id:)
      if context[:current_user].nil?
        raise GraphQL::ExecutionError,
        'You need to sign in to perform this action'
      end

      pattern = Pattern.find(id)

      raise GraphQL::ExecutionError, pattern.errors.full_messages[0] unless pattern

      pattern.destroy!
    end
  end
end
