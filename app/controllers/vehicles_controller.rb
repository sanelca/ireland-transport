class VehiclesController < ApplicationController
    def new
        @vehicle = Vehicle.new
    end
    def create
        @vehicle = Vehicle.new(vehicle_params)
        if @vehicle.save
            redirect_to @vehicle
        else
          render :new
        end
    end 
    def show 
        @vehicle = Vehicle.find(params[:id])
    end
    def edit
        @vehicle = Vehicle.find(params[:id])
    end
    def update
        @vehicle = Vehicle.find(params[:id])
        @vehicle.update_attributes(vehicle_params)
        if @vehicle.save
          redirect_to @vehicle
        else
          render :edit
        end
    end  
    def destroy
        vehicle = Vehicle.find(params[:id])
        vehicle.destroy
        redirect_to root_url
    end     
    private

    def vehicle_params
      params.require(:vehicle).permit(:vehicle_name, :registration_number, :number_of_seats)
    end    
end
