class PagesController < ApplicationController
  def home
    @brands = Figure.random_brands(4)
  end

  def show
    @figures = Figure.where(brand: params[:name])
  end
end
