class ProxyController < ApplicationController
  include ShopifyApp::AppProxyVerification

  def show
    render html: <<~HTML.html_safe
      <form method="post">
        <button type="submit">send a post</button>
      </form>
    HTML
  end

  def update
    render plain: "success!"
  end
end
