require 'test_helper'

class IndicatorsControllerTest < ActionController::TestCase
  setup do
    @indicator = indicators(:A1_m40)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indicators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indicator" do
    assert_difference('Indicator.count') do
      post :create, indicator: { matrix_id: @indicator.matrix_id, max_points: @indicator.max_points, short: @indicator.short, title: @indicator.title }
    end

    assert_redirected_to indicator_path(assigns(:indicator))
  end

  test "should show indicator" do
    get :show, id: @indicator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indicator
    assert_response :success
  end

  test "should update indicator" do
    patch :update, id: @indicator, indicator: { matrix_id: @indicator.matrix_id, max_points: @indicator.max_points, short: @indicator.short, title: @indicator.title }
    assert_redirected_to indicator_path(assigns(:indicator))
  end

  test "should destroy indicator" do
    assert_difference('Indicator.count', -1) do
      delete :destroy, id: @indicator
    end

    assert_redirected_to indicators_path
  end
end
