class StaffMembersController < ApplicationController
  before_action :set_staff_member, only: [:show, :update, :destroy]

  # GET /staff_members
  def index
    res = {}
    @staff_members = StaffMember.all
    res['status'] = 200
    res['data'] = @staff_members
    render json: res
  end

  # GET /staff_members/1
   def show

    user_id = params['user_id']
    res = {}
    res['status'] = true
    res['data'] = StaffMember.where("user_id=#{user_id}")
    render json: res
  end

  # POST /staff_members
  def create
    res = {}
    @staff_member = StaffMember.new(staff_member_params)
    if @staff_member.save
      res['status'] = 200
      res['data'] = @staff_member
    else
      res['status'] = 200
      res['errors'] = @staff_member.errors
    end
    render json: res
  end

  # PATCH/PUT /staff_members/1
  def update
    res = {}
    if @staff_member.update(staff_member_params)
      res['status'] = 200
      res['data'] = @staff_member
    else
      res['status'] = 201
      res['data'] = @staff_member.errors

    end
    render json: res
  end

  # DELETE /staff_members/1
  def destroy
    res = {}
    res['status'] = 200
    res['data'] = @staff_member.destroy
    render json: res
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
