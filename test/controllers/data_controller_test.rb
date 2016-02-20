require 'test_helper'

class DataControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get giveUserData" do
    get :giveUserData
    assert_response :success
  end

end
