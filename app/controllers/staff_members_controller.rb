class StaffMembersController < ApplicationController
  before_action :set_staff_member, only: [:show, :update, :destroy]

  # GET /staff_members
  def index
    @staff_members = StaffMember.all

    render json: @staff_members
  end

  # GET /staff_members/1
  def show
    render json: @staff_member
  end

  # POST /staff_members
  def create
    @staff_member = StaffMember.new(staff_member_params)

    if @staff_member.save
      render json: @staff_member, status: :created, location: @staff_member
    else
      render json: @staff_member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /staff_members/1
  def update
    if @staff_member.update(staff_member_params)
      render json: @staff_member
    else
      render json: @staff_member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /staff_members/1
  def destroy
    @staff_member.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff_member
      @staff_member = StaffMember.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def staff_member_params
      params.require(:staff_member).permit(:enable_schedule_new_inspection, :enable_publish_report, :enable_new_comment_to_template, :enable_edit_template, :enable_manage_template, :enable_access_financial_data, :enable_comapany_data, :user_id)
    end
end
