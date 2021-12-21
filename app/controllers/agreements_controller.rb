class AgreementsController < ApplicationController
  before_action :set_agreement, only: [:show, :update, :destroy]

  # GET /agreements
  def index
    @agreements = Agreement.all

    render json: @agreements
  end

  # GET /agreements/1
  def show
    render json: @agreement
  end

  # POST /agreements
  def create
    @agreement = Agreement.new(agreement_params)

    if @agreement.save
      render json: @agreement, status: :created, location: @agreement
    else
      render json: @agreement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /agreements/1
  def update
    if @agreement.update(agreement_params)
      render json: @agreement
    else
      render json: @agreement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /agreements/1
  def destroy
    @agreement.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agreement
      @agreement = Agreement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agreement_params
      params.require(:agreement).permit(:agreement_name, :status)
    end
end
