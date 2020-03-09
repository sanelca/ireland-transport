class RoutepointsController < ApplicationController
  def index
    @routepoints = Routepoint.all
  end

  def show
    @routepoint = Routepoint.find(params[:id])
  end

  def new
    @title = "Add Routepoint"
    @routepoint = Routepoint.new
  end

  def create
    routepoints = Routepoint.new(routepoints_params)
    if routepoints.save
        redirect_to routepoints
    else
      render :new
    end
  end

  def edit
    @title = "Edit Routepoint"
    @routepoint = Routepoint.find(params[:id])
  end

  def update
    routepoint = Routepoint.find(params[:id])
    routepoint.update_attributes(routepoints_params)
    if routepoint.save
      redirect_to routepoint
    else
      render :edit
    end
  end

  def destroy
    routepoint = Routepoint.find(params[:id])
    routepoint.destroy
    redirect_to root_url     
  end
  
  private
    def routepoints_params
      params.require(:routepoint).permit(:route_id, :location_id)
    end   
end
