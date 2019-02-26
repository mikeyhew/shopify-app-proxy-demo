ShopifyApp.configure do |config|
  config.application_name = "Coolness"
  config.api_key = ENV.fetch("SHOPIFY_API_KEY")
  config.secret = ENV.fetch("SHOPIFY_SECRET_KEY")
  config.scope = "read_products" # Consult this page for more scope options:
                                 # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
