class RefralResourcesController < ApplicationController
  before_action :set_refral_resource, only: [:show, :update, :destroy]

  # GET /refral_resources
  def index
    @refral_resources = RefralResource.all

    render json: @refral_resources
  end

  # GET /refral_resources/1
  def show
    user_id = params['user_id']
    res = {}
    res['status'] = true
    res['data'] = RefralResource.where("user_id=#{user_id}")
    render json: res
  end

  # POST /refral_resources
  def create
    @refral_resource = RefralResource.new(refral_resource_params)

    if @refral_resource.save
      render json: @refral_resource, status: :created, location: @refral_resource
    else
      render json: @refral_resource.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /refral_resources/1
  def update
    if @refral_resource.update(refral_resource_params)
      render json: @refral_resource
    else
      render json: @refral_resource.errors, status: :unprocessable_entity
    end
  end

  # DELETE /refral_resources/1
  def destroy
    @refral_resource.destroy
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
