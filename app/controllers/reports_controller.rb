class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :update, :destroy]

  # GET /reports
  def index
    @reports = Report.all

    render json: {status: 200, data: @reports}
  end

  # GET /reports/1
  def show
    render json: {status: 200, data: @report}
  end

  # POST /reports
  def create
    @report = Report.new(report_params)

    if @report.save
      render json: {status: 200, data: @report}, status: :created, location: @report
    else
      render json: @report.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reports/1
  def update
    if @report.update(report_params)
      render json: {status: 200, data: @report}
    else
      render json: @report.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reports/1
  def destroy
    @report.destroy
    render json: {message: "Deleted successfully"}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def report_params
      params.require(:report).permit(:name, :date, :time)
    end
end