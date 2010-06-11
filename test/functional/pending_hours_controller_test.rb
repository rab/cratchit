require 'test_helper'

class PendingHoursControllerTest < ActionController::TestCase
  setup do
    @pending_hour = pending_hours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pending_hours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pending_hour" do
    assert_difference('PendingHour.count') do
      post :create, :pending_hour => @pending_hour.attributes
    end

    assert_redirected_to pending_hour_path(assigns(:pending_hour))
  end

  test "should show pending_hour" do
    get :show, :id => @pending_hour.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pending_hour.to_param
    assert_response :success
  end

  test "should update pending_hour" do
    put :update, :id => @pending_hour.to_param, :pending_hour => @pending_hour.attributes
    assert_redirected_to pending_hour_path(assigns(:pending_hour))
  end

  test "should destroy pending_hour" do
    assert_difference('PendingHour.count', -1) do
      delete :destroy, :id => @pending_hour.to_param
    end

    assert_redirected_to pending_hours_path
  end
end
