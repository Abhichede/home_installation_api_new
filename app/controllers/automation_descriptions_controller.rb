class AutomationDescriptionsController < ApplicationController
  before_action :set_automation_description, only: [:show, :update, :destroy]

  # GET /automation_descriptions
  def index
    @automation_descriptions = AutomationDescription.all

    render json: @automation_descriptions
  end

  # GET /automation_descriptions/1
  def show
    render json: @automation_description
  end

  # POST /automation_descriptions
  def create
    @automation_description = AutomationDescription.new(automation_description_params)

    if @automation_description.save
      render json: @automation_description, status: :created, location: @automation_description
    else
      render json: @automation_description.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /automation_descriptions/1
  def update
    if @automation_description.update(automation_description_params)
      render json: @automation_description
    else
      render json: @automation_description.errors, status: :unprocessable_entity
    end
  end

  # DELETE /automation_descriptions/1
  def destroy
    @automation_description.destroy
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
