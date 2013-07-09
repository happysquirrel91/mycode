require 'test_helper'

class WebinfosControllerTest < ActionController::TestCase
  setup do
    @webinfo = webinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:webinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webinfo" do
    assert_difference('Webinfo.count') do
      post :create, :webinfo => { :name => @webinfo.name, :url => @webinfo.url }
    end

    assert_redirected_to webinfo_path(assigns(:webinfo))
  end

  test "should show webinfo" do
    get :show, :id => @webinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @webinfo
    assert_response :success
  end

  test "should update webinfo" do
    put :update, :id => @webinfo, :webinfo => { :name => @webinfo.name, :url => @webinfo.url }
    assert_redirected_to webinfo_path(assigns(:webinfo))
  end

  test "should destroy webinfo" do
    assert_difference('Webinfo.count', -1) do
      delete :destroy, :id => @webinfo
    end

    assert_redirected_to webinfos_path
  end
end
