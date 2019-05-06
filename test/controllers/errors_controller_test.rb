require 'test_helper'

class ErrorsControllerTest < ActionDispatch::IntegrationTest
  test "should get bad_request" do
    get "/400"
    assert_response(400)
  end

  test "should get not_found" do
    get "/404"
    assert_response(404)
  end

  test "should get unprocessable_entity" do
    get "/422"
    assert_response(422)
  end

  test "should get internal_server_error" do
    get "/500"
    assert_response(500)
  end

end
