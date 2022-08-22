require "test_helper"

class GuitarControllerTest < ActionDispatch::IntegrationTest
  test "should get resources" do
    get guitar_resources_url
    assert_response :success
  end
end
