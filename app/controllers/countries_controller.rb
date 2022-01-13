class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :update, :destroy]

  # GET /countries
  def index
    res = {}
    @countries = Country.all
    res['status'] = 200
    res['data'] = @countries
     render json: res
  end

  # GET /countries/1
  def show
    res = {}
    res['status'] = 200
    res['data'] = @country
     render json: res
  end

  # POST /countries
  def create
    res = {}
    @country = Country.new(country_params)

    if @country.save
      res['status'] = 200
    res['data'] = @country
    else
      res['status'] = 201
    res['data'] = @country
    end
     render json: res
  end

  # PATCH/PUT /countries/1
  def update
    res = {}
    if @country.update(country_params)
      res['status'] = 200
    res['data'] = @country
    else
      res['status'] = 201
    res['data'] = @country.errors
    end
     render json: res
  end

  # DELETE /countries/1
  def destroy
    res = {}
    res['status'] = 200
    res['data'] = @country.destroy
     render json: res
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def country_params
      params.require(:country).permit(:country_name, :status)
    end
end
