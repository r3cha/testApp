class TicketsController < ApplicationController

  def homepage
    @tickets = current_user.tickets
  end


end
