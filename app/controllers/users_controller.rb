class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  def login
    email = params['email']
    password = params['password']
    check_login = User.where("email='#{email}' and password='#{password}'").first
    res = {}
    if check_login.present?
      res['message'] = "Login Successfully"
      res['status'] = true
      res['data'] = check_login
    else
      res['message'] = "Please enter correct credentials"
      res['status'] = false
    end
    render json:res
  end

  # GET /users/1
  def show
    render json: @user
  end
  def check_existing_user
    email_id = params['email_id']
    user = User.where("email='#{email_id}'")
    res = {}
    res['status'] = true
    if user.present?
      res['email_present'] = true
    else
      res['email_present'] = false
    end
    render json: res
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: {
        status: 200,
        message: "User created successfully!",
        data: {
          id: @user.id,
          created_at: @user.created_at
        }
      }, status: :ok, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :phone_number, :role, :status, :country_of_residence, :your_address, :profile_photo, :profile_designation)
    end
end
