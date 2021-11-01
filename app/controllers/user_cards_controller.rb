class UserCardsController < ApplicationController
  before_action :set_user_card, only: [:show, :update, :destroy]

  # GET /user_cards
  def index
    @user_cards = UserCard.all

    render json: @user_cards
  end

  # GET /user_cards/1
  def show
    render json: @user_card
  end

  # POST /user_cards
  def create
    @user_card = UserCard.new(user_card_params)

    if @user_card.save
      render json: @user_card, status: :created, location: @user_card
    else
      render json: @user_card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_cards/1
  def update
    if @user_card.update(user_card_params)
      render json: @user_card
    else
      render json: @user_card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_cards/1
  def destroy
    @user_card.destroy
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
