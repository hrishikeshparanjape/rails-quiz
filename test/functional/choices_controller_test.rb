require 'test_helper'

class ChoicesControllerTest < ActionController::TestCase
  setup do
    @choice = choices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:choices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create choice" do
    assert_difference('Choice.count') do
      post :create, :choice => @choice.attributes
    end

    assert_redirected_to choice_path(assigns(:choice))
  end

  test "should show choice" do
    get :show, :id => @choice.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @choice.to_param
    assert_response :success
  end

  test "should update choice" do
    put :update, :id => @choice.to_param, :choice => @choice.attributes
    assert_redirected_to choice_path(assigns(:choice))
  end

  test "should destroy choice" do
    assert_difference('Choice.count', -1) do
      delete :destroy, :id => @choice.to_param
    end

    assert_redirected_to choices_path
  end
end
