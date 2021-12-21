class InspectorsController < ApplicationController
  before_action :set_inspector, only: [:show, :update, :destroy]

  # GET /inspectors
  def index
    @inspectors = Inspector.all

    render json: @inspectors
  end

  # GET /inspectors/1
  def show
    render json: @inspector
  end

  # POST /inspectors
  def create
    @inspector = Inspector.new(inspector_params)

    if @inspector.save
      render json: @inspector, status: :created, location: @inspector
    else
      render json: @inspector.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inspectors/1
  def update
    if @inspector.update(inspector_params)
      render json: @inspector
    else
      render json: @inspector.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inspectors/1
  def destroy
    @inspector.destroy
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
