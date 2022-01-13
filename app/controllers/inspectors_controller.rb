class InspectorsController < ApplicationController
  before_action :set_inspector, only: [:show, :update, :destroy]

  # GET /inspectors
  def index
    res = {}
    @inspectors = Inspector.all
    res['status'] = 200
    res['data'] = @inspectors
    render json: res
  end

  # GET /inspectors/1
  def show
    res = {}
    res['status'] = 200
    res['data'] = @inspector
    render json: res
  end

  # POST /inspectors
  def create
    res = {}
    @inspector = Inspector.new(inspector_params)

    if @inspector.save
      res['status'] = 200
      res['data'] = @inspector
    else
      res['status'] = 201
      res['data'] = @inspector.errors
    end
    render json: res
  end

  # PATCH/PUT /inspectors/1
  def update
    res = {}
    if @inspector.update(inspector_params)
      res['status'] = 200
      res['data'] = @inspector
    else
      res['status'] = 201
      res['data'] = @inspector.errors
    end
    render json: res
  end

  # DELETE /inspectors/1
  def destroy
    res = {}
    res['status'] = 200
      res['data'] = @inspector.destroy

    render json: res
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspector
      @inspector = Inspector.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def inspector_params
      params.require(:inspector).permit(:first_name, :last_name, :enable_email, :enable_phone, :enable_schedule, :enable_add_to_template, :enable_edit_template, :enable_can_manage_constacts)
    end
end
