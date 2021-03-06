class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    @title = "Add Location"
    @location = Location.new
  end

  def create
    location = Location.new(location_params)
    if location.save
        redirect_to location
    else
      render :new
    end   
  end

  def show
    @location = Location.find(params[:id])
  end

  def edit
    @title = "Update Location"
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    @location.update_attributes(location_params)
    if @location.save
      redirect_to @location
    else
      render :edit
    end    
  end

  def destroy
    location = Location.find(params[:id])
    location.destroy
    redirect_to root_url    
  end
  private

  def location_params
    params.require(:location).permit(:location_place, :city, :location_register, :location_address, :longitude, :latitude)
  end    
end
