class UserCardsController < ApplicationController
  before_action :set_user_card, only: [:show, :update, :destroy]

  # GET /user_cards
  def index
    res = {}
    @user_cards = UserCard.all
    res['status'] = 200
    res['data'] = @user_cards
    render json: res
  end

  # GET /user_cards/1
  def show
    res = {}
    res['status'] = 200
    res['data'] = @user_card
    render json: res
  end

  # POST /user_cards
  def create
    res = {}
    @user_card = UserCard.new(user_card_params)

    if @user_card.save
      res['status'] = 200
    res['data'] = @user_card
    else
      res['status'] = 201
    res['data'] = @user_card.errors
    end
    render json: res
  end

  # PATCH/PUT /user_cards/1
  def update
    res = {}
    if @user_card.update(user_card_params)
      res['status'] = 200
    res['data'] = @user_card
    else
      res['status'] = 201
    res['data'] = @user_card.errors
    end
    render json: res
  end

  # DELETE /user_cards/1
  def destroy
    res = {}
    res['status'] = 200
    res['data'] = @user_card.destroy
    render json: res
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_card
      @user_card = UserCard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_card_params
      params.require(:user_card).permit(:card_number, :card_type, :cvv, :expiry_date, :status, :user_id)
    end
end
