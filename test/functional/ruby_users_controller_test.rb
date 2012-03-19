require 'test_helper'

class RubyUsersControllerTest < ActionController::TestCase
  setup do
    @ruby_user = ruby_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ruby_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ruby_user" do
    assert_difference('RubyUser.count') do
      post :create, ruby_user: @ruby_user.attributes
    end

    assert_redirected_to ruby_user_path(assigns(:ruby_user))
  end

  test "should show ruby_user" do
    get :show, id: @ruby_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ruby_user
    assert_response :success
  end

  test "should update ruby_user" do
    put :update, id: @ruby_user, ruby_user: @ruby_user.attributes
    assert_redirected_to ruby_user_path(assigns(:ruby_user))
  end

  test "should destroy ruby_user" do
    assert_difference('RubyUser.count', -1) do
      delete :destroy, id: @ruby_user
    end

    assert_redirected_to ruby_users_path
  end
end
