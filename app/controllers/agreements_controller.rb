class AgreementsController < ApplicationController
  before_action :set_agreement, only: [:show, :update, :destroy]

  # GET /agreements
  def index
    res = {}
    @agreements = Agreement.all
    res['status'] = 200
    res['data'] = @agreements
    render json: res
  end

  # GET /agreements/1
  def show
    res = {}
    res['status'] = 200
    res['data'] = @agreement
    render json: res
  end

  # POST /agreements
  def create
    res = {}
    @agreement = Agreement.new(agreement_params)

    if @agreement.save
      res['status'] = 200
    res['data'] = @agreement
    else
      res['status'] = 201
    res['data'] = @agreement.errors
      render json: @agreement.errors, status: :unprocessable_entity
    end
    render json: res
  end

  # PATCH/PUT /agreements/1
  def update
    res = {}
    if @agreement.update(agreement_params)
      res['status'] = 200
      res['data'] = @agreement
    else
      res['status'] = 200
    res['data'] = @agreement.errors
    end
    render json: res
  end

  # DELETE /agreements/1
  def destroy
    res = {}
    res['status'] = 200
    res['data'] = @agreement.destroy
    render json: res
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
