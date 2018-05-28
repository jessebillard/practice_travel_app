class TripsController < ApplicationController
  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
    @trip.build_traveler()
  end

  def create

    @trip = Trip.new(strong_params)
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render new_trip_path
    end
    
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(strong_params)

    if @trip.save
      redirect_to trip_path(@trip)
    else
      render edit_trip_path
    end 
  end

  def destroy

  end

  private

  def strong_params
    params.require(:trip).permit(:location_id, "trip_date(1i)", "trip_date(2i)", "trip_date(3i)", "trip_time(1i)", "trip_time(2i)", "trip_time(3i)", "trip_time(4i)", "trip_time(5i)", traveler_attributes: [:first_name, :last_name])
  end 
end
