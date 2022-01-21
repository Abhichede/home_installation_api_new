require 'test_helper'

class AgentContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agent_contact = agent_contacts(:one)
  end

  test "should get index" do
    get agent_contacts_url, as: :json
    assert_response :success
  end

  test "should create agent_contact" do
    assert_difference('AgentContact.count') do
      post agent_contacts_url, params: { agent_contact: { agency: @agent_contact.agency, city: @agent_contact.city, client_agent: @agent_contact.client_agent, country_string: @agent_contact.country_string, email: @agent_contact.email, name: @agent_contact.name, phone: @agent_contact.phone, seller_agent: @agent_contact.seller_agent, state: @agent_contact.state, user_id: @agent_contact.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show agent_contact" do
    get agent_contact_url(@agent_contact), as: :json
    assert_response :success
  end

  test "should update agent_contact" do
    patch agent_contact_url(@agent_contact), params: { agent_contact: { agency: @agent_contact.agency, city: @agent_contact.city, client_agent: @agent_contact.client_agent, country_string: @agent_contact.country_string, email: @agent_contact.email, name: @agent_contact.name, phone: @agent_contact.phone, seller_agent: @agent_contact.seller_agent, state: @agent_contact.state, user_id: @agent_contact.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy agent_contact" do
    assert_difference('AgentContact.count', -1) do
      delete agent_contact_url(@agent_contact), as: :json
    end

    assert_response 204
  end
end
