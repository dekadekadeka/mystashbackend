module Mutations
  class CreateMyProject < BaseMutation  
      argument :progress, Int, required: false
      argument :name, String, required: true

    type Types::MyProjectType

    def resolve(progress: nil, name: nil)
      if context[:current_user].nil?
        raise GraphQL::ExecutionError,
          "You need to sign in to perform this action"
      end

      MyProject.create!(
        user: context[:current_user],
        progress: progress,
        name: name
      )
    end
  end
end