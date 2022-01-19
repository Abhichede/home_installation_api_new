require 'test_helper'

class RealtorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @realtor = realtors(:one)
  end

  test "should get index" do
    get realtors_url, as: :json
    assert_response :success
  end

  test "should create realtor" do
    assert_difference('Realtor.count') do
      post realtors_url, params: { realtor: { agent_type: @realtor.agent_type, city: @realtor.city, company_name: @realtor.company_name, country: @realtor.country, email: @realtor.email, mobile_number: @realtor.mobile_number, name: @realtor.name } }, as: :json
    end

    assert_response 201
  end

  test "should show realtor" do
    get realtor_url(@realtor), as: :json
    assert_response :success
  end

  test "should update realtor" do
    patch realtor_url(@realtor), params: { realtor: { agent_type: @realtor.agent_type, city: @realtor.city, company_name: @realtor.company_name, country: @realtor.country, email: @realtor.email, mobile_number: @realtor.mobile_number, name: @realtor.name } }, as: :json
    assert_response 200
  end

  test "should destroy realtor" do
    assert_difference('Realtor.count', -1) do
      delete realtor_url(@realtor), as: :json
    end

    assert_response 204
  end
end
