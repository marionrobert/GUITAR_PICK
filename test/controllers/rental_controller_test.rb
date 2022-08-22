require "test_helper"

class RentalControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get rental_new_url
    assert_response :success
  end

  test "should get create" do
    get rental_create_url
    assert_response :success
  end

  test "should get accept" do
    get rental_accept_url
    assert_response :success
  end

  test "should get decline" do
    get rental_decline_url
    assert_response :success
  end
end
