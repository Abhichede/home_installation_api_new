require 'test_helper'

class AgreementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agreement = agreements(:one)
  end

  test "should get index" do
    get agreements_url, as: :json
    assert_response :success
  end

  test "should create agreement" do
    assert_difference('Agreement.count') do
      post agreements_url, params: { agreement: { agreement_name: @agreement.agreement_name, status: @agreement.status } }, as: :json
    end

    assert_response 201
  end

  test "should show agreement" do
    get agreement_url(@agreement), as: :json
    assert_response :success
  end

  test "should update agreement" do
    patch agreement_url(@agreement), params: { agreement: { agreement_name: @agreement.agreement_name, status: @agreement.status } }, as: :json
    assert_response 200
  end

  test "should destroy agreement" do
    assert_difference('Agreement.count', -1) do
      delete agreement_url(@agreement), as: :json
    end

    assert_response 204
  end
end
