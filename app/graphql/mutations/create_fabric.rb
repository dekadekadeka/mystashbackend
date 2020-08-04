module Mutations
  class CreateFabric < BaseMutation  
      argument :fabric_type, String, required: true
      argument :color, String, required: true
      argument :size, String, required: false
      argument :description, String, required: false
      argument :name, String, required: true
      argument :pic, String, required: false

    type Types::FabricType

    def resolve(fabric_type: nil, color: nil, size: nil, description: nil, name: nil, pic: nil)
      if context[:current_user].nil?
        raise GraphQL::ExecutionError,
              "You need to sign in to perform this action"
      end

      Fabric.create!(
        fabric_type: fabric_type,
        color: color,
        size: size,
        description: description,
        name: name,
        pic: pic,
        user: context[:current_user]
      )
    end
  end
end