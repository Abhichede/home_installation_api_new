class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :update, :destroy]

  # GET /services
  def index
    res = {}
    @services = Service.all
    res['status'] = 200
    res['data'] = @services
    render json: res
  end

  # GET /services/1
  def show
    res = {}
    user_id = params['user_id']
    res = {}
    res['status'] = 200
    res['data'] = Service.where("user_id=#{user_id}")
    render json: res
  end

  # POST /services
  def create
    res = {}
    @service = Service.new(service_params)

    if @service.save
      res['status'] = 200
      res['data'] = @service

    else
      res['status'] = 201
    res['data'] = @service.errors
    end
    render json: res
  end

  # PATCH/PUT /services/1
  def update
    res = {}
    if @service.update(service_params)
      res['status'] = 200
      res['data'] = @service
    else
      res['status'] = 201
      res['data'] = @service.errors
    end
    render json: res
  end

  # DELETE /services/1
  def destroy
    res = {}
    res['status'] = 200
    res['data'] = @service.destroy
    render json: res
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_params
      params.require(:service).permit(:name, :description, :base_cost, :duration, :templates_id, :agreement_id, :user_id)
    end
end
