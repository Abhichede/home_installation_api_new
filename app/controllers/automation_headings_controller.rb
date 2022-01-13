class AutomationHeadingsController < ApplicationController
  before_action :set_automation_heading, only: [:show, :update, :destroy]

  # GET /automation_headings
  def index
    res = {}
    @automation_headings = AutomationHeading.all
    res['status'] = 200
    res['data'] = @automation_headings
    render json: res
  end

  # GET /automation_headings/1
  def show
    res = {}
    res['status'] = 200
    res['data'] = @automation_heading
    render json: res
  end

  # POST /automation_headings
  def create
    res = {}
    @automation_heading = AutomationHeading.new(automation_heading_params)

    if @automation_heading.save
      res['status'] = 200
    res['data'] = @automation_heading

    else
      res['status'] = 201
    res['data'] = @automation_heading.errors
    end
    render json: res
  end

  # PATCH/PUT /automation_headings/1
  def update
    res = {}
    if @automation_heading.update(automation_heading_params)
      res['status'] = 200
    res['data'] = @automation_heading
    else
      res['status'] = 201
    res['data'] = @automation_heading.errors
    end
    render json: res
  end

  # DELETE /automation_headings/1
  def destroy
    res = {}
    res['status'] = 200
    res['data'] = @automation_heading.destroy
    render json: res
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
