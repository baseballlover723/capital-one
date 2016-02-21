require 'test_helper'

class BreakControllerTest < ActionController::TestCase
  test "should get break" do
    get :break
    assert_response :success
  end

end
