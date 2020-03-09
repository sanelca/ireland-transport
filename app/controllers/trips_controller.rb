class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @title = "Add Trip"
    @trip = Trip.new
  end

  def create
    trip = Trip.new(trips_params)
    if trip.save
        redirect_to trip
    else
      render :new
    end    
  end

  def edit
    @title = "Edit Trip"
    @trip = Trip.find(params[:id])
  end

  def update
    trip = Trip.find(params[:id])
    trip.update_attributes(trips_params)
    if trip.save
      redirect_to trip
    else
      render :edit
    end    
  end

  def destroy
    trip = Trip.find(params[:id])
    trip.destroy
    redirect_to root_url     
  end
  private
    def trips_params
      params.require(:trip).permit(:vehicle_id, :route_id, :point_from, :point_to, :time_start, :time_to)
    end
end
