class AutomationHeadingsController < ApplicationController
  before_action :set_automation_heading, only: [:show, :update, :destroy]

  # GET /automation_headings
  def index
    @automation_headings = AutomationHeading.all

    render json: @automation_headings
  end

  # GET /automation_headings/1
  def show
    render json: @automation_heading
  end

  # POST /automation_headings
  def create
    @automation_heading = AutomationHeading.new(automation_heading_params)

    if @automation_heading.save
      render json: @automation_heading, status: :created, location: @automation_heading
    else
      render json: @automation_heading.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /automation_headings/1
  def update
    if @automation_heading.update(automation_heading_params)
      render json: @automation_heading
    else
      render json: @automation_heading.errors, status: :unprocessable_entity
    end
  end

  # DELETE /automation_headings/1
  def destroy
    @automation_heading.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_automation_heading
      @automation_heading = AutomationHeading.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def automation_heading_params
      params.require(:automation_heading).permit(:heading_name, :status)
    end
end
