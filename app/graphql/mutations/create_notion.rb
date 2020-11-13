module Mutations
  class CreateNotion < BaseMutation
    argument :name, String, required: true
    argument :brand, String, required: false
    argument :size, String, required: false
    argument :description, String, required: false
    argument :color, String, required: false

    type Types::NotionType

    def resolve(name: nil, brand: nil, size: nil, description: nil, color: nil)
      if context[:current_user].nil?
        raise GraphQL::ExecutionError,
          "You need to sign in to perform this action"
      end

      Notion.create!(
        name: name,
        brand: brand,
        size: size,
        description: description,
        color: color,
        user: context[:current_user]
      )
    end
  end
end
