class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :update, :destroy]

  # GET /cities
  def index
    res = {}
    @cities = City.all
    res['status'] = 200
    res['data'] = @cities
    render json: res
  end

  # GET /cities/1
  def show
    res = {}
    res['status'] = 200
    res['data'] = @city
    render json: res
  end

  # POST /cities
  def create
    res = {}
    @city = City.new(city_params)

    if @city.save
      res['status'] = 200
    res['data'] = @city
    else
      res['status'] = 201
    res['data'] = @city.errors
    end
    render json: res
  end

  # PATCH/PUT /cities/1
  def update
    res = {}
    if @city.update(city_params)
      res['status'] = 200
    res['data'] = @city
    else
      res['status'] = 201
    res['data'] = @city.errors
    end
    render json: res
  end

  # DELETE /cities/1
  def destroy
    res = {}
    res['status'] = 200
    res['data'] = @city.destroy
    render json: res
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def city_params
      params.require(:city).permit(:city_name, :zipcode, :country_code, :status)
    end
end
