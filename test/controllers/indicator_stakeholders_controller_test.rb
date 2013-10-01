require 'test_helper'

class IndicatorStakeholdersControllerTest < ActionController::TestCase
  setup do
    @indicator_stakeholder = indicator_stakeholders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indicator_stakeholders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indicator_stakeholder" do
    assert_difference('IndicatorStakeholder.count') do
      post :create, indicator_stakeholder: { indicator_id: @indicator_stakeholder.indicator_id, stakeholder_id: @indicator_stakeholder.stakeholder_id }
    end

    assert_redirected_to indicator_stakeholder_path(assigns(:indicator_stakeholder))
  end

  test "should show indicator_stakeholder" do
    get :show, id: @indicator_stakeholder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indicator_stakeholder
    assert_response :success
  end

  test "should update indicator_stakeholder" do
    patch :update, id: @indicator_stakeholder, indicator_stakeholder: { indicator_id: @indicator_stakeholder.indicator_id, stakeholder_id: @indicator_stakeholder.stakeholder_id }
    assert_redirected_to indicator_stakeholder_path(assigns(:indicator_stakeholder))
  end

  test "should destroy indicator_stakeholder" do
    assert_difference('IndicatorStakeholder.count', -1) do
      delete :destroy, id: @indicator_stakeholder
    end

    assert_redirected_to indicator_stakeholders_path
  end
end
