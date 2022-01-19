class RealtorsController < ApplicationController
  before_action :set_realtor, only: [:show, :update, :destroy]

  # GET /realtors
  def index
    @realtors = Realtor.all

    render json: {status: 200, data: @realtors}
  end

  # GET /realtors/1
  def show
    render json: {status: 200, data: @realtor}
  end

  # POST /realtors
  def create
    @realtor = Realtor.new(realtor_params)

    if @realtor.save
      render json: {status: 200, data: @realtor}, status: :ok, location: @realtor
    else
      render json: @realtor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /realtors/1
  def update
    if @realtor.update(realtor_params)
      render json: {status: 200, data: @realtor}
    else
      render json: @realtor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /realtors/1
  def destroy
    @realtor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_realtor
      @realtor = Realtor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def realtor_params
      params.require(:realtor).permit(:name, :agent_type, :mobile_number, :email, :company_name, :city, :country)
    end
end
