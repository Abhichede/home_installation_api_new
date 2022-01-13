class AutomationDescriptionsController < ApplicationController
  before_action :set_automation_description, only: [:show, :update, :destroy]

  # GET /automation_descriptions
  def index
    res = {}
    @automation_descriptions = AutomationDescription.all
    res['status'] = 200
    res['data'] = @automation_descriptions
    render json: res
  end

  # GET /automation_descriptions/1
  def show
    res = {}
    res['status'] = 200
    res['data'] = @automation_description
    render json: res
  end

  # POST /automation_descriptions
  def create
    res = {}
    @automation_description = AutomationDescription.new(automation_description_params)

    if @automation_description.save
      res['status'] = 200
      res['data'] = @automation_description

    else
      res['status'] = 201
    res['data'] = @automation_description.errors
    end
    render json: res
  end

  # PATCH/PUT /automation_descriptions/1
  def update
    res = {}
    if @automation_description.update(automation_description_params)
     res['status'] = 200
    res['data'] = @automation_description
    else
      res['status'] = 201
    res['data'] = @automation_description.errors
    end
    render json: res
  end

  # DELETE /automation_descriptions/1
  def destroy
    res = {}
    res['status'] = 200
    res['data'] = @automation_description.errors
    render json: res
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_automation_description
      @automation_description = AutomationDescription.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def automation_description_params
      params.require(:automation_description).permit(:automation_id, :email_check, :text_check, :simple_check)
    end
end
