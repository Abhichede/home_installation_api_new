require 'test_helper'

class TopAgentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @top_agent = top_agents(:one)
  end

  test "should get index" do
    get top_agents_url, as: :json
    assert_response :success
  end

  test "should create top_agent" do
    assert_difference('TopAgent.count') do
      post top_agents_url, params: { top_agent: { agent_name: @top_agent.agent_name, user_id: @top_agent.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show top_agent" do
    get top_agent_url(@top_agent), as: :json
    assert_response :success
  end

  test "should update top_agent" do
    patch top_agent_url(@top_agent), params: { top_agent: { agent_name: @top_agent.agent_name, user_id: @top_agent.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy top_agent" do
    assert_difference('TopAgent.count', -1) do
      delete top_agent_url(@top_agent), as: :json
    end

    assert_response 204
  end
end
