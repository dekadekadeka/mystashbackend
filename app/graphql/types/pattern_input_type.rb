module Types
  class PatternInputType < BaseInputObject
    graphql_name 'PatternInput'

    argument :brand, String, required: true
    argument :number, String, required: true
    argument :front_pic, String, required: false
    argument :back_pic, String, required: false
  end
end
