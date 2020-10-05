module Types
  class AuthProviderCredentialsInput < BaseInputObject
    # the name is usually inferred by class name but can be overwritten

    argument :username, String, required: true
    argument :password, String, required: true
  end
end
