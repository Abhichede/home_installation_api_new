class AutomationSavesController < ApplicationController
  before_action :set_automation_safe, only: [:show, :update, :destroy]

  # GET /automation_saves
  def index
    @automation_saves = AutomationSave.all

    render json: @automation_saves
  end

  # GET /automation_saves/1
   def show
    user_id = params['user_id']
    res = {}
    res['status'] = true
    res['data'] = AutomationSave.where("user_id=#{user_id}")
    render json: res
  end


  # POST /automation_saves
  def create
    @automation_safe = AutomationSave.new(automation_safe_params)

    if @automation_safe.save
      render json: @automation_safe, status: :created, location: @automation_safe
    else
      render json: @automation_safe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /automation_saves/1
  def update
    if @automation_safe.update(automation_safe_params)
      render json: @automation_safe
    else
      render json: @automation_safe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /automation_saves/1
  def destroy
    @automation_safe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_automation_safe
      @automation_safe = AutomationSave.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def automation_safe_params
      params.require(:automation_safe).permit(:user_id, :automation_description_id)
    end
end
