require 'test_helper'

class EmbeddedAppControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get embedded_app_index_url
    assert_response :success
  end

end
