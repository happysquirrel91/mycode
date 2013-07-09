require 'test_helper'

class ExperimentsControllerTest < ActionController::TestCase
  test "should get startExperiment" do
    get :startExperiment
    assert_response :success
  end

  test "should get endExperiment" do
    get :endExperiment
    assert_response :success
  end

end
