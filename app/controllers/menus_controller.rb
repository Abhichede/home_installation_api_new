class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :update, :destroy]

  # GET /menus
  def index
    res = {}
    @menus = Menu.all

    res['status'] = 200
    res['data'] = @menus
    render json: res
  end

  # GET /menus/1
  def show
    res = {}
    res['status'] = 200
    res['data'] = @menu
    render json: res
  end

  # POST /menus
  def create
    res = {}
    @menu = Menu.new(menu_params)

    if @menu.save
      res['status'] = 200
    res['data'] = @menu
    else
      res['status'] = 201
    res['data'] = @menu.errors
    end
    render json: res
  end

  # PATCH/PUT /menus/1
  def update
    res = {}
    if @menu.update(menu_params)
      res['status'] = 200
    res['data'] = @menu
    else
      res['status'] = 201
    res['data'] = @menu.errors
    end
    render json: res
  end

  # DELETE /menus/1
  def destroy
    res = {}
    res['status'] = 200
    res['data'] = @menu.destroy
    render json: res
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def menu_params
      params.require(:menu).permit(:menu_name, :link)
    end
end
