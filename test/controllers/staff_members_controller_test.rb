require 'test_helper'

class StaffMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @staff_member = staff_members(:one)
  end

  test "should get index" do
    get staff_members_url, as: :json
    assert_response :success
  end

  test "should create staff_member" do
    assert_difference('StaffMember.count') do
      post staff_members_url, params: { staff_member: { enable_access_financial_data: @staff_member.enable_access_financial_data, enable_comapany_data: @staff_member.enable_comapany_data, enable_edit_template: @staff_member.enable_edit_template, enable_manage_template: @staff_member.enable_manage_template, enable_new_comment_to_template: @staff_member.enable_new_comment_to_template, enable_publish_report: @staff_member.enable_publish_report, enable_schedule_new_inspection: @staff_member.enable_schedule_new_inspection, user_id: @staff_member.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show staff_member" do
    get staff_member_url(@staff_member), as: :json
    assert_response :success
  end

  test "should update staff_member" do
    patch staff_member_url(@staff_member), params: { staff_member: { enable_access_financial_data: @staff_member.enable_access_financial_data, enable_comapany_data: @staff_member.enable_comapany_data, enable_edit_template: @staff_member.enable_edit_template, enable_manage_template: @staff_member.enable_manage_template, enable_new_comment_to_template: @staff_member.enable_new_comment_to_template, enable_publish_report: @staff_member.enable_publish_report, enable_schedule_new_inspection: @staff_member.enable_schedule_new_inspection, user_id: @staff_member.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy staff_member" do
    assert_difference('StaffMember.count', -1) do
      delete staff_member_url(@staff_member), as: :json
    end

    assert_response 204
  end
end
