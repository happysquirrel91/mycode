require 'test_helper'

class NewTablesControllerTest < ActionController::TestCase
  setup do
    @new_table = new_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_table" do
    assert_difference('NewTable.count') do
      post :create, :new_table => {  }
    end

    assert_redirected_to new_table_path(assigns(:new_table))
  end

  test "should show new_table" do
    get :show, :id => @new_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @new_table
    assert_response :success
  end

  test "should update new_table" do
    put :update, :id => @new_table, :new_table => {  }
    assert_redirected_to new_table_path(assigns(:new_table))
  end

  test "should destroy new_table" do
    assert_difference('NewTable.count', -1) do
      delete :destroy, :id => @new_table
    end

    assert_redirected_to new_tables_path
  end
end
