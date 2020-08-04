module Mutations
  class CreateNeedle < BaseMutation  
      argument :needle_type, String, required: true
      argument :size, String, required: true

    type Types::NeedleType

    def resolve(needle_type: nil, size: nil)
      if context[:current_user].nil?
        raise GraphQL::ExecutionError,
              "You need to sign in to perform this action"
      end

      Needle.create!(
        needle_type: needle_type,
        size: size,
        user: context[:current_user]
      )
    end
  end
end