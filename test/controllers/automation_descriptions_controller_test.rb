require 'test_helper'

class AutomationDescriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @automation_description = automation_descriptions(:one)
  end

  test "should get index" do
    get automation_descriptions_url, as: :json
    assert_response :success
  end

  test "should create automation_description" do
    assert_difference('AutomationDescription.count') do
      post automation_descriptions_url, params: { automation_description: { automation_id: @automation_description.automation_id, email_check: @automation_description.email_check, simple_check: @automation_description.simple_check, text_check: @automation_description.text_check } }, as: :json
    end

    assert_response 201
  end

  test "should show automation_description" do
    get automation_description_url(@automation_description), as: :json
    assert_response :success
  end

  test "should update automation_description" do
    patch automation_description_url(@automation_description), params: { automation_description: { automation_id: @automation_description.automation_id, email_check: @automation_description.email_check, simple_check: @automation_description.simple_check, text_check: @automation_description.text_check } }, as: :json
    assert_response 200
  end

  test "should destroy automation_description" do
    assert_difference('AutomationDescription.count', -1) do
      delete automation_description_url(@automation_description), as: :json
    end

    assert_response 204
  end
end
