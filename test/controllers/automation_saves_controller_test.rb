require 'test_helper'

class AutomationSavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @automation_safe = automation_saves(:one)
  end

  test "should get index" do
    get automation_saves_url, as: :json
    assert_response :success
  end

  test "should create automation_safe" do
    assert_difference('AutomationSave.count') do
      post automation_saves_url, params: { automation_safe: { automation_description_id: @automation_safe.automation_description_id, user_id: @automation_safe.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show automation_safe" do
    get automation_safe_url(@automation_safe), as: :json
    assert_response :success
  end

  test "should update automation_safe" do
    patch automation_safe_url(@automation_safe), params: { automation_safe: { automation_description_id: @automation_safe.automation_description_id, user_id: @automation_safe.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy automation_safe" do
    assert_difference('AutomationSave.count', -1) do
      delete automation_safe_url(@automation_safe), as: :json
    end

    assert_response 204
  end
end
