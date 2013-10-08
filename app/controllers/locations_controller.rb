class LocationsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @location = @movie.locations.new(location_params)

    if @location.save
      redirect_to @location.movie, notice: 'Location was successfully created.'
    else
      redirect_to @location.movie, alert: 'Location could not be created'
    end
  end

  private

  def location_params
    params.require(:location).permit(:name, :city, :state, :address)
  end

end
