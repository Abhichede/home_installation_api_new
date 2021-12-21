require 'test_helper'

class RefralResourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @refral_resource = refral_resources(:one)
  end

  test "should get index" do
    get refral_resources_url, as: :json
    assert_response :success
  end

  test "should create refral_resource" do
    assert_difference('RefralResource.count') do
      post refral_resources_url, params: { refral_resource: { refral_resource_percentage: @refral_resource.refral_resource_percentage, user_id: @refral_resource.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show refral_resource" do
    get refral_resource_url(@refral_resource), as: :json
    assert_response :success
  end

  test "should update refral_resource" do
    patch refral_resource_url(@refral_resource), params: { refral_resource: { refral_resource_percentage: @refral_resource.refral_resource_percentage, user_id: @refral_resource.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy refral_resource" do
    assert_difference('RefralResource.count', -1) do
      delete refral_resource_url(@refral_resource), as: :json
    end

    assert_response 204
  end
end
