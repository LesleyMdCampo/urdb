class ShowtimesController < ApplicationController

  def create
    @location = Location.find(params[:location_id])
    @showtime = @location.showtimes.new(showtime_params)

    if @showtime.save
      redirect_to @location.movie, notice: 'Showtime was successfully created.'
    else
      redirect_to @location.movie, alert: 'Showtime could not be created'
    end
  end

  private

  def showtime_params
    params.require(:showtime).permit(:time)
  end
end

