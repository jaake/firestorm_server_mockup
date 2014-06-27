OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '977157576456-fagfr3qeh6oudejdc008sfhkv3rlto33.apps.googleusercontent.com', 'aIfkFNYK7jICKrr6Yympuj3l', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
