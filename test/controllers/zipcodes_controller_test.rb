require 'test_helper'

class ZipcodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zipcode = zipcodes(:one)
  end

  test "should get index" do
    get zipcodes_url, as: :json
    assert_response :success
  end

  test "should create zipcode" do
    assert_difference('Zipcode.count') do
      post zipcodes_url, params: { zipcode: { status: @zipcode.status, zipcode: @zipcode.zipcode } }, as: :json
    end

    assert_response 201
  end

  test "should show zipcode" do
    get zipcode_url(@zipcode), as: :json
    assert_response :success
  end

  test "should update zipcode" do
    patch zipcode_url(@zipcode), params: { zipcode: { status: @zipcode.status, zipcode: @zipcode.zipcode } }, as: :json
    assert_response 200
  end

  test "should destroy zipcode" do
    assert_difference('Zipcode.count', -1) do
      delete zipcode_url(@zipcode), as: :json
    end

    assert_response 204
  end
end
