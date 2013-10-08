require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  setup do
    @report = reports(:Modelabel_m40)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report" do
    assert_difference('Report.count') do
      post :create, report: { company_id: @report.company_id, document_url: @report.document_url, industry: @report.industry, staff: @report.staff, title: @report.title }
    end

    assert_redirected_to report_path(assigns(:report))
  end

  test "should show report" do
    get :show, id: @report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report
    assert_response :success
  end

  test "should update report" do
    patch :update, id: @report, report: { company_id: @report.company_id, document_url: @report.document_url, industry: @report.industry, staff: @report.staff, title: @report.title }
    assert_redirected_to report_path(assigns(:report))
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete :destroy, id: @report
    end

    assert_redirected_to reports_path
  end
end
