require 'test_helper'

class ExportsControllerTest < ActionController::TestCase
  test "should get exportData" do
    get :exportData
    assert_response :success
  end

end
