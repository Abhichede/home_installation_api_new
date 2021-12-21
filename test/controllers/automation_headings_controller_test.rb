require 'test_helper'

class AutomationHeadingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @automation_heading = automation_headings(:one)
  end

  test "should get index" do
    get automation_headings_url, as: :json
    assert_response :success
  end

  test "should create automation_heading" do
    assert_difference('AutomationHeading.count') do
      post automation_headings_url, params: { automation_heading: { heading_name: @automation_heading.heading_name, status: @automation_heading.status } }, as: :json
    end

    assert_response 201
  end

  test "should show automation_heading" do
    get automation_heading_url(@automation_heading), as: :json
    assert_response :success
  end

  test "should update automation_heading" do
    patch automation_heading_url(@automation_heading), params: { automation_heading: { heading_name: @automation_heading.heading_name, status: @automation_heading.status } }, as: :json
    assert_response 200
  end

  test "should destroy automation_heading" do
    assert_difference('AutomationHeading.count', -1) do
      delete automation_heading_url(@automation_heading), as: :json
    end

    assert_response 204
  end
end
