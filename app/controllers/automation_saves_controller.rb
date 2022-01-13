class AutomationSavesController < ApplicationController
  before_action :set_automation_safe, only: [:show, :update, :destroy]

  # GET /automation_saves
  def index
    res = {}
    @automation_saves = AutomationSave.all
    res['status'] = 200
    res['data'] = @automation_saves
    render json: res
  end

  # GET /automation_saves/1
   def show
    res = {}
    user_id = params['user_id']
    res = {}
    res['status'] = true
    res['data'] = AutomationSave.where("user_id=#{user_id}")
    render json: res
  end


  # POST /automation_saves
  def create
    res = {}
    @automation_safe = AutomationSave.new(automation_safe_params)

    if @automation_safe.save
      res['status'] = 200
      res['data'] = @automation_safe
    else
      res['status'] = 200
      res['data'] = @automation_safe.errors
    end
    render json: res
  end

  # PATCH/PUT /automation_saves/1
  def update
    res = {}
    if @automation_safe.update(automation_safe_params)
      res['status'] = 200
      res['data'] = @automation_safe
    else
      res['status'] = 200
      res['data'] = @automation_safe.errors
    end
    render json: res
  end

  # DELETE /automation_saves/1
  def destroy
    res = {}
    res['status'] = 200
    res['data'] = @automation_safe.destroy
    render json: res
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
