module Mutations
  class CreatePattern < BaseMutation
    argument :pattern_input, Types::PatternInputType, required: true

    type Types::PatternType

    def resolve(pattern_input:)
      Pattern.create!(
        brand: pattern_input.brand,
        number: pattern_input.number,
        front_pic: pattern_input.front_pic,
        back_pic: pattern_input.back_pic
      )
    end
  end
end
