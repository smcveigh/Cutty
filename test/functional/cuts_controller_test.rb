require 'test_helper'

class CutsControllerTest < ActionController::TestCase
  setup do
    @cut = cuts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cuts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cut" do
    assert_difference('Cut.count') do
      post :create, :cut => @cut.attributes
    end

    assert_redirected_to cut_path(assigns(:cut))
  end

  test "should show cut" do
    get :show, :id => @cut.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cut.to_param
    assert_response :success
  end

  test "should update cut" do
    put :update, :id => @cut.to_param, :cut => @cut.attributes
    assert_redirected_to cut_path(assigns(:cut))
  end

  test "should destroy cut" do
    assert_difference('Cut.count', -1) do
      delete :destroy, :id => @cut.to_param
    end

    assert_redirected_to cuts_path
  end
end
