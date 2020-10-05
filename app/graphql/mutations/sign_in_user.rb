module Mutations
  class SignInUser < BaseMutation
    null true

    argument :input, Types::AuthProviderCredentialsInput, required: false

    field :token, String, null: true
    field :user, Types::UserType, null: true

    def resolve(input: nil)
      # basic validation
      return unless input

      user = User.find_by username: input[:username]

      # ensures we have the correct user
      return unless user
      return unless user.authenticate(input[:password])

      token = JWT.encode({ user_id: user.id }, Rails.application.credentials.secret_key_base)

      context[:session][:token] = token

      { user: user, token: token }
    end
  end
end
