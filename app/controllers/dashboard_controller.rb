class DashboardController < ApplicationController
  def view
    @figures = current_user.figures
  end
end
