require 'test_helper'

class OrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization = organizations(:one)
  end

  test "should get index" do
    get organizations_url, as: :json
    assert_response :success
  end

  test "should create organization" do
    assert_difference('Organization.count') do
      post organizations_url, params: { organization: { enable_completion_to_publish: @organization.enable_completion_to_publish, enable_cost_estimator: @organization.enable_cost_estimator, organization_name: @organization.organization_name, user_id: @organization.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show organization" do
    get organization_url(@organization), as: :json
    assert_response :success
  end

  test "should update organization" do
    patch organization_url(@organization), params: { organization: { enable_completion_to_publish: @organization.enable_completion_to_publish, enable_cost_estimator: @organization.enable_cost_estimator, organization_name: @organization.organization_name, user_id: @organization.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy organization" do
    assert_difference('Organization.count', -1) do
      delete organization_url(@organization), as: :json
    end

    assert_response 204
  end
end
