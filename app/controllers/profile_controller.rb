class ProfileController < ApplicationController
  def show
    @email = current_user.email
    @password = current_user.password
  end
end
