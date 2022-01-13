class SettingsController < ApplicationController
  before_action :set_setting, only: [:show, :update, :destroy]

  # GET /settings
  def index
    res = {}
    @settings = Setting.all
    res['status'] = 200
    res['data'] = @settings
     render json: res
  end

  # GET /settings/1
  def show
    res = {}
    res['status'] = 200
    res['data'] = @setting
    render json: res
  end

  # POST /settings
  def create
    res = {}
    @setting = Setting.new(setting_params)

    if @setting.save
      res['status'] = 200
      res['data'] = @setting
    else
      res['status'] = 201
      res['data'] = @setting.errors
    end
     render json: res
  end

  # PATCH/PUT /settings/1
  def update
    res = {}
    if @setting.update(setting_params)
      res['status'] = 200
      res['data'] = @setting
    else
      res['status'] = 201
      res['data'] = @setting.errors
    end
     render json: res
  end

  # DELETE /settings/1
  def destroy
    res = {}
    res['status'] = 200
    res['data'] = @setting.destroy
    render json: res
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setting
      @setting = Setting.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def setting_params
      params.require(:setting).permit(:day, :block, :user_id)
    end
end
