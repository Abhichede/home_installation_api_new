class AgencyContactsController < ApplicationController
  before_action :set_agency_contact, only: [:show, :update, :destroy]

  # GET /agency_contacts
  def index
    @agency_contacts = AgencyContact.all

    render json: {status: 200, data: @agency_contacts}
  end

  # GET /agency_contacts/1
  def show
    render json: {status: 200, data: @agency_contact}
  end

  # POST /agency_contacts
  def create
    @agency_contact = AgencyContact.new(agency_contact_params)

    if @agency_contact.save
      render json: {status: 200, data: @agency_contact}, status: :created, location: @agency_contact
    else
      render json: @agency_contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /agency_contacts/1
  def update
    if @agency_contact.update(agency_contact_params)
      render json: {status: 200, data: @agency_contact}
    else
      render json: @agency_contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /agency_contacts/1
  def destroy
    @agency_contact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agency_contact
      @agency_contact = AgencyContact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agency_contact_params
      params.require(:agency_contact).permit(:name, :user_id)
    end
end
