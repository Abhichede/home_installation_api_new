class DiscountsController < ApplicationController
  before_action :set_discount, only: [:show, :update, :destroy]

  # GET /discounts
  def index
    res = {}
    @discounts = Discount.all
    res['status'] = 200
    res['data'] = @discounts

    render json:  res[
  end

  # GET /discounts/1
  def show
    res = {}
    res['status'] = 200
    res['data'] = @discount

    render json:  res
  end

  # POST /discounts
  def create
    res = {}
    @discount = Discount.new(discount_params)
    if @discount.save
      res['status'] = 200
      res['data'] = @discount

    else
      res['status'] = 201
      res['errors'] = @discount.errors
    end
     render json: res
  end

  # PATCH/PUT /discounts/1
  def update
      res = {}
    if @discount.update(discount_params)
      res['status'] = 200
      res['data'] = @discount
    else
      res['status'] = 201
      res['errors'] = @discount.errors

    end
    render json: res
  end

  # DELETE /discounts/1
  def destroy
    res = {}
    res['status'] = 200
    res['data'] = @discount.destroy
    render json: res
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discount
      @discount = Discount.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def discount_params
      params.require(:discount).permit(:code, :type, :amount_percentage, :discription, :notes, :description, :applied_to_service, :applied_to_add_ons, :max_uses, :expiration_dates, :user_id)
    end
end
