class DriveroutesController < ApplicationController
  def index
  end

  def new
    @driveroute = Driveroute.new
  end

  def create
    driveroute = Driveroute.new(driveroute_params)
    if driveroute.save
        redirect_to driveroute
    else
      render :new
    end    
  end

  def show
    @driveroute = Driveroute.find(params[:id])
  end

  def edit
    @driveroute = Driveroute.find(params[:id])
  end

  def update
    driveroute = Driveroute.find(params[:id])
    driveroute.update_attributes(driveroute_params)
    if driveroute.save
      redirect_to driveroute
    else
      render :edit
    end     
  end

  def destroy
    driveroute = Driveroute.find(params[:id])
    driveroute.destroy
    redirect_to root_url      
  end

  def driveroute_params
    params.require(:driveroute).permit(:route_name, :location_from, :location_to, :start_time, :end_time, :vehicle)
  end    
end
