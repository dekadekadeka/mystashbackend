module Mutations
  class CreateUser < BaseMutation
    # often we will need input types for specific mutation
    # in those cases we can define those input types in the mutation class itself
    class AuthProviderSignupData < Types::BaseInputObject
      argument :input, Types::AuthProviderCredentialsInput, required: false
    end

    argument :name, String, required: true
    argument :email, String, required: true
    argument :auth_provider, AuthProviderSignupData, required: false

    type Types::UserType

    def resolve(name: nil, email: nil, auth_provider: nil)
      User.create!(
        name: name,
        email: email,
        username: auth_provider&.[](:input)&.[](:username),
        password: auth_provider&.[](:input)&.[](:password)
      )
    end
  end
end
