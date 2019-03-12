class ReservationsController < ApplicationController
  def create
    @figure = Figure.find(params[:figure_id])
    @user = current_user
    @reservation = Reservation.new(start_time: Date.today, end_time: Date.today + 5.days, figure: @figure, user: @user)
    @reservation.save
    redirect_to figure_path(@figure)
  end
end
