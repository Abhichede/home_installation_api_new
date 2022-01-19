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
      render json: {status: 200, data: {id: @report.id, message: "Created successfully!"}}, status: :created, location: @report
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
      params.require(:report).permit(
        :report_name,
        :cover_picture_one,
        :cover_picture_two,
        :property_street_address,
        :property_country,
        :property_state,
        :property_city,
        :client_name,
        :client_street_address,
        :client_country,
        :client_state,
        :client_city,
        :client_phone,
        :client_email,
        :client_fax,
        :client_note,
        :buyer,
        :seller,
        :buyer_agent,
        :seller_agent,
        :owner,
        :other_present,
        :inspection_date,
        :inspection_start_time,
        :inspection_end_time,
        :invoice_number,
        :fees_charged,
        :taxes,
        :other_charges,
        :total_fee,
        :date_paid,
        :climate,
        :temperature,
        :humidity,
        :furnished,
        :number_of_stories,
        :style,
        :structure_orientations,
        :type_of_construction,
        :year_built,
        :sq_ft,
        :travel_distance_start,
        :travel_distance_end,
        :total_travel,
      )
    end
end
