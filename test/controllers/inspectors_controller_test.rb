require 'test_helper'

class InspectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inspector = inspectors(:one)
  end

  test "should get index" do
    get inspectors_url, as: :json
    assert_response :success
  end

  test "should create inspector" do
    assert_difference('Inspector.count') do
      post inspectors_url, params: { inspector: { enable_add_to_template: @inspector.enable_add_to_template, enable_can_manage_constacts: @inspector.enable_can_manage_constacts, enable_edit_template: @inspector.enable_edit_template, enable_email: @inspector.enable_email, enable_phone: @inspector.enable_phone, enable_schedule: @inspector.enable_schedule, first_name: @inspector.first_name, last_name: @inspector.last_name } }, as: :json
    end

    assert_response 201
  end

  test "should show inspector" do
    get inspector_url(@inspector), as: :json
    assert_response :success
  end

  test "should update inspector" do
    patch inspector_url(@inspector), params: { inspector: { enable_add_to_template: @inspector.enable_add_to_template, enable_can_manage_constacts: @inspector.enable_can_manage_constacts, enable_edit_template: @inspector.enable_edit_template, enable_email: @inspector.enable_email, enable_phone: @inspector.enable_phone, enable_schedule: @inspector.enable_schedule, first_name: @inspector.first_name, last_name: @inspector.last_name } }, as: :json
    assert_response 200
  end

  test "should destroy inspector" do
    assert_difference('Inspector.count', -1) do
      delete inspector_url(@inspector), as: :json
    end

    assert_response 204
  end
end
