class ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :update, :destroy]

  # GET /contracts
  def index
    if params[:user_id].present?
      @contracts = Contract.all.where(user_id: params[:user_id])
    else
      @contracts = Contract.all
    end

    render json: {status: 200, data: @contracts}
  end

  # GET /contracts/1
  def show
    render json: {status: 200, data: @contract}
  end

  # POST /contracts
  def create
    @contract = Contract.new(contract_params)

    if @contract.save
      render json: {status: 200, data: @contract}, status: :created, location: @contract
    else
      render json: @contract.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contracts/1
  def update
    if @contract.update(contract_params)
      render json: {status: 200, data: @contract}
    else
      render json: @contract.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contracts/1
  def destroy
    @contract.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract
      @contract = Contract.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contract_params
      params.require(:contract).permit(:contract_summary, :signature, :user_id)
    end
end
