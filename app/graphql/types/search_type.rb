module Types
  class SearchType < BaseInputObject
    graphql_name 'SearchInput'

    argument :search_term, String, required: false
  end
end
