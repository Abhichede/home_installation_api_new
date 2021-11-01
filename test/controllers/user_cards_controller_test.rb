require 'test_helper'

class UserCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_card = user_cards(:one)
  end

  test "should get index" do
    get user_cards_url, as: :json
    assert_response :success
  end

  test "should create user_card" do
    assert_difference('UserCard.count') do
      post user_cards_url, params: { user_card: { card_number: @user_card.card_number, card_type: @user_card.card_type, cvv: @user_card.cvv, expiry_date: @user_card.expiry_date, status: @user_card.status, user_id: @user_card.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_card" do
    get user_card_url(@user_card), as: :json
    assert_response :success
  end

  test "should update user_card" do
    patch user_card_url(@user_card), params: { user_card: { card_number: @user_card.card_number, card_type: @user_card.card_type, cvv: @user_card.cvv, expiry_date: @user_card.expiry_date, status: @user_card.status, user_id: @user_card.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_card" do
    assert_difference('UserCard.count', -1) do
      delete user_card_url(@user_card), as: :json
    end

    assert_response 204
  end
end
