require 'test_helper'

class ClientContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_contact = client_contacts(:one)
  end

  test "should get index" do
    get client_contacts_url, as: :json
    assert_response :success
  end

  test "should create client_contact" do
    assert_difference('ClientContact.count') do
      post client_contacts_url, params: { client_contact: { email: @client_contact.email, first_name: @client_contact.first_name, last_name: @client_contact.last_name, phone: @client_contact.phone, user_id: @client_contact.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show client_contact" do
    get client_contact_url(@client_contact), as: :json
    assert_response :success
  end

  test "should update client_contact" do
    patch client_contact_url(@client_contact), params: { client_contact: { email: @client_contact.email, first_name: @client_contact.first_name, last_name: @client_contact.last_name, phone: @client_contact.phone, user_id: @client_contact.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy client_contact" do
    assert_difference('ClientContact.count', -1) do
      delete client_contact_url(@client_contact), as: :json
    end

    assert_response 204
  end
end
