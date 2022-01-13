class TemplatesController < ApplicationController
  before_action :set_template, only: [:show, :update, :destroy]

  # GET /templates
  def index
    res = {}
    @templates = Template.all
    res['status'] = 200
    res['data'] = @templates
    render json: res
  end

  # GET /templates/1
  def show
    res = {}
    res['status'] = 200
    res['data'] = @template
    render json: res
  end

  # POST /templates
  def create
    res = {}
    @template = Template.new(template_params)

    if @template.save
      res['status'] = 200
      res['data'] = @template

    else
      res['status'] = 201
    res['data'] = @template.errors
    end
    render json: res
  end

  # PATCH/PUT /templates/1
  def update
    res = {}
    if @template.update(template_params)
      res['status'] = 200
      res['data'] = @template

    else
      res['status'] = 201
    res['data'] = @template.errors
    end
    render json: res
  end

  # DELETE /templates/1
  def destroy
    res = {}
    res['status'] = 200
    res['data'] = @template.destroy
    render json: res
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template
      @template = Template.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def template_params
      params.require(:template).permit(:template_name, :status)
    end
end
