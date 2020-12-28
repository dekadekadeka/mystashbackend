module Mutations
  class AddToStash < BaseMutation
    argument :pattern_id, ID, required: true

    type Types::UserType

    def resolve(pattern_id:)
      if context[:current_user].nil?
        raise GraphQL::ExecutionError,
        'You need to sign in to perform this action'
      end

      user = User.find(context[:current_user][:id])
      pattern = Pattern.find(pattern_id)

      if user
        user.patterns << pattern

        user.save!
        
        user
      else
        raise GraphQL::ExecutionError, user.errors.full_messages[0]
      end
    end
  end
end
