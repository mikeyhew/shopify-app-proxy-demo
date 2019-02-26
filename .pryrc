Shop.send :define_method, :connect do
  session = ShopifyAPI::Session.new(shopify_domain, shopify_token)
  ShopifyAPI::Base.activate_session(session)
end
