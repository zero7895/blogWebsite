require 'test_helper'

class ParseUtilitiesControllerTest < ActionController::TestCase
  test "should get getLottory" do
    get :getLottory
    assert_response :success
  end

end
