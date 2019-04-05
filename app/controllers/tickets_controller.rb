class TicketsController < ApplicationController

  def homepage
    @tickets = current_user.admin? ? Ticket.all : current_user.tickets
  end


end
