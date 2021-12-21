class TopAgentsController < ApplicationController
  before_action :set_top_agent, only: [:show, :update, :destroy]

  # GET /top_agents
  def index
    @top_agents = TopAgent.all

    render json: @top_agents
  end

  # GET /top_agents/1
  def show
    user_id = params['user_id']
    res = {}
    res['status'] = true
    res['data'] = TopAgent.where("user_id=#{user_id}")
    render json: res
  end

  # POST /top_agents
  def create
    @top_agent = TopAgent.new(top_agent_params)

    if @top_agent.save
      render json: @top_agent, status: :created, location: @top_agent
    else
      render json: @top_agent.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /top_agents/1
  def update
    if @top_agent.update(top_agent_params)
      render json: @top_agent
    else
      render json: @top_agent.errors, status: :unprocessable_entity
    end
  end

  # DELETE /top_agents/1
  def destroy
    @top_agent.destroy
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
