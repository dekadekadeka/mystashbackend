module Mutations
  class CreatePattern < BaseMutation  
      argument :brand, String, required: true
      argument :number, String, required: true
      argument :front_pic, String, required: false
      argument :back_pic, String, required: false

    type Types::PatternType

    def resolve(brand: nil, number: nil, front_pic: nil, back_pic: nil)
      Pattern.create!(
        brand: brand,
        number: number,
        front_pic: front_pic,
        back_pic: back_pic,
      )
    end
  end
end