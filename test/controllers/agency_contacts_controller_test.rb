require 'test_helper'

class AgencyContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agency_contact = agency_contacts(:one)
  end

  test "should get index" do
    get agency_contacts_url, as: :json
    assert_response :success
  end

  test "should create agency_contact" do
    assert_difference('AgencyContact.count') do
      post agency_contacts_url, params: { agency_contact: { name: @agency_contact.name, user_id: @agency_contact.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show agency_contact" do
    get agency_contact_url(@agency_contact), as: :json
    assert_response :success
  end

  test "should update agency_contact" do
    patch agency_contact_url(@agency_contact), params: { agency_contact: { name: @agency_contact.name, user_id: @agency_contact.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy agency_contact" do
    assert_difference('AgencyContact.count', -1) do
      delete agency_contact_url(@agency_contact), as: :json
    end

    assert_response 204
  end
end
