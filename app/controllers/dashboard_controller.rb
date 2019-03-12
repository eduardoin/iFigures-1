class DashboardController < ApplicationController
  def view
    @figures = current_user.figures
    @reservation = current_user.reservations
  end
end
