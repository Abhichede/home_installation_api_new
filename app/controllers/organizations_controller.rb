class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :update, :destroy]

  # GET /organizations
  def index
    res = {}
    @organizations = Organization.all
    res['status'] = 200
    res['data'] = @organizations
    render json: res
  end

  # GET /organizations/1
  def show
    user_id = params['user_id']
    res = {}
    res['status'] = 200
    res['data'] = Organization.where("user_id=#{user_id}")
    render json: res
  end


  # POST /organizations
  def create
    @organization = Organization.new(organization_params)
    res = {}
    if @organization.save

      res['status'] = 200
      res['data'] = @organization

    else
      res['status'] = 200
      res['errors'] = @organization.errors

    end
    render json: res
  end

  # PATCH/PUT /organizations/1
  def update
    res = {}
    if @organization.update(organization_params)
      res['status'] = 200
      res['data'] = @organization
    else
      res['status'] = 200
      res['errors'] = @organization.errors


    end
    render json: res
  end

  # DELETE /organizations/1
  def destroy
     res = {}
    res['status'] = 200
    res['data'] = @organization.destroy
    render json: res
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def organization_params
      params.require(:organization).permit(:organization_name, :enable_completion_to_publish, :enable_cost_estimator, :user_id)
    end
end
