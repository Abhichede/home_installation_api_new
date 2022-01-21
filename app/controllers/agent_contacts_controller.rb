class AgentContactsController < ApplicationController
  before_action :set_agent_contact, only: [:show, :update, :destroy]

  # GET /agent_contacts
  def index
    @agent_contacts = AgentContact.all

    render json: {status: 200, data: @agent_contacts}
  end

  # GET /agent_contacts/1
  def show
    render json: {status: 200, data: @agent_contact}
  end

  # POST /agent_contacts
  def create
    @agent_contact = AgentContact.new(agent_contact_params)

    if @agent_contact.save
      render json: {status: 200, data: @agent_contact}, status: :created, location: @agent_contact
    else
      render json: @agent_contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /agent_contacts/1
  def update
    if @agent_contact.update(agent_contact_params)
      render json: {status: 200, data: @agent_contact}
    else
      render json: @agent_contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /agent_contacts/1
  def destroy
    @agent_contact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agent_contact
      @agent_contact = AgentContact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agent_contact_params
      params.require(:agent_contact).permit(:name, :agency, :client_agent, :seller_agent, :phone, :email, :city, :state, :country_string, :user_id)
    end
end
