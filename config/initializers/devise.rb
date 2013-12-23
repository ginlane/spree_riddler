#require 'devise'
#Devise.secret_token = "db6a0ac89fe562f91dfa6765a1186e711fabf20686dfbfdf54edb937c2f8b5161aaa1ca60615c88c07f064043df9ebc1d476"
#Devise.secret_token = "85342e2e2204aba65487dee7850c0ecb7f76c0fdb86e46f165115c7021161a3a740698e7e7d21af8d5ae09de0f012fcdad3a"
# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  # The secret key used by Devise. Devise uses this key to generate
  # random tokens. Changing this key will render invalid all existing
  # confirmation, reset password and unlock tokens in the database.
  config.secret_key = 'b38d8fe8c4ed888cfe0474e84e51d854cc84547dda655b714d82b045b26d9c08743a2f2f4c74e433d2057fa18d6a44eed57e1dbd7eceb33d80981d7bccc3cb34'
end
