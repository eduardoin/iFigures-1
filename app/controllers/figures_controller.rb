class FiguresController < ApplicationController
  before_action :set_figure, only: %i[show edit destroy update]

  def index
    @query = params[:query]
    if params[:query].nil?
      @figures = Figure.all
    else
      @figures = Figure.search_by_name_and_brand(@query)
    end
  end

  def show
    @map_figures = Figure.where(id: params[:id]).where.not(latitude: nil, longitude: nil)

    @markers = @map_figures.map do |map_figure|
      {
        lng: map_figure.longitude,
        lat: map_figure.latitude
      }
    end
  end

  def new
    @figure = Figure.new
    @figure.pictures.build
  end

  def create
    @figure = Figure.new(figure_params)
    @figure.user = current_user
    if @figure.save
      flash[:notice] = 'Action Figure created successfully.'
      redirect_to figure_path(@figure)
    else
      render :new
    end
  end

  def edit
    @figure.pictures.build
  end

  def update
    if @figure.update(figure_params)
      flash[:notice] = 'Action Figure updated successfully.'
      redirect_to figure_path(@figure)
    else
      render :edit
    end
  end

  def destroy
    @figure.destroy
    flash[:notice] = 'Action Figure deleted successfully.'
    redirect_to figures_path
  end

  private

  def figure_params
    params.require(:figure).permit(:name, :price, :description, :address, :brand, pictures_attributes: %i[id photo main_photo _destroy])
  end

  def set_figure
    @figure = Figure.find(params[:id])
  end
end
