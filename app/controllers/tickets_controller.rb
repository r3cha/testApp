class TicketsController < ApplicationController
  load_and_authorize_resource

  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @tickets = current_user.admin? ? Ticket.all : current_user.tickets
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def edit
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = current_user
    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Cоздали' }
        format.json { render :show, status: :created, location: @ticket }
      else
        format.html { render :new }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'обновили' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # def destroy
  #   @ticket.destroy
  #   respond_to do |format|
  #     format.html { redirect_to items_url, notice: '' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    def ticket_params
      params.require(:ticket).permit(:id, :title, :body, :status)
    end

end
