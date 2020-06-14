module Mutations
  class SignInUser < BaseMutation
    null true

    argument :credentials, Types::AuthProviderCredentialsInput, required: false

    field :token, String, null: true
    field :user, Types::UserType, null: true

    def resolve(credentials: nil)
      # basic validation
      return unless credentials

      user = User.find_by username: credentials[:username]

      # ensures we have the correct user
      return unless user
      return unless user.authenticate(credentials[:password])

      token = JWT.encode({id: user.id}, Rails.application.credentials.secret_key_base)

      context[:session][:token] = token

      { user: user, token: token }
    end
  end
end