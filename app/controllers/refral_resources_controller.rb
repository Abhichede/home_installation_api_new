class RefralResourcesController < ApplicationController
  before_action :set_refral_resource, only: [:show, :update, :destroy]

  # GET /refral_resources
  def index
    render json: {
      status: 200,
      data: RefralResource.all
    }
  end

  # GET /refral_resources/1
  def show
      user_id = params['user_id']
      res = {}
      res['status'] = 200
      res['data'] = RefralResource.where("user_id=#{user_id}")
    render json: res
  end

  # POST /refral_resources
  def create
    res = {}
    @refral_resource = RefralResource.new(refral_resource_params)

    if @refral_resource.save
      res['status'] = 200
      res['data'] = @refral_resource
    else
      res['status'] = 201
      res['data'] = @refral_resource.errors
    end
    render json: res
  end

  # PATCH/PUT /refral_resources/1
  def update
    res = {}
    if @refral_resource.update(refral_resource_params)
      res['status'] = 200
      res['data'] = @refral_resource
    else
      res['status'] = 200
      res['data'] = @refral_resource.errors
    end
    render json: res
  end

  # DELETE /refral_resources/1
  def destroy
    res = {}
    res['status'] = 200
    res['data'] = @refral_resource.destroy
    render json: res
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refral_resource
      @refral_resource = RefralResource.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def refral_resource_params
      params.require(:refral_resource).permit(:refral_resource_percentage, :user_id)
    end
end
