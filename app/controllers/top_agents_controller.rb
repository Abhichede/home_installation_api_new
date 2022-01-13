class TopAgentsController < ApplicationController
  before_action :set_top_agent, only: [:show, :update, :destroy]

  # GET /top_agents
  def index
    res = {}
    @top_agents = TopAgent.all

    res['status'] = 200
    res['data'] = @top_agents
    render json: res
  end

  # GET /top_agents/1
  def show
    res = {}
    user_id = params['user_id']
    res = {}
    res['status'] = true
    res['data'] = TopAgent.where("user_id=#{user_id}")

    render json: res
  end

  # POST /top_agents
  def create
    res = {}
    @top_agent = TopAgent.new(top_agent_params)

    if @top_agent.save
      res['status'] = 200
    res['data'] = @top_agent

    else
      res['status'] = 201
    res['data'] = @top_agent.errors

    end
    render json: res
  end

  # PATCH/PUT /top_agents/1
  def update
    res = {}
    if @top_agent.update(top_agent_params)
      res['status'] = 200
    res['data'] = @top_agent
    else
      res['status'] = 201
    res['data'] = @top_agent.errors
    end
    render json: res
  end

  # DELETE /top_agents/1
  def destroy
    res = {}
    res['status'] = 200
    res['data'] = @top_agent.destroy
    render json: res
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_top_agent
      @top_agent = TopAgent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def top_agent_params
      params.require(:top_agent).permit(:agent_name, :user_id)
    end
end
