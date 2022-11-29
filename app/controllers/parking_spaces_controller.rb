class ParkingSpacesController < ApplicationController
  before_action :set_garage, only: %i[new create]

  def show
    @parking_space = ParkingSpace.find(params[:id])
  end

  def new
    @parking_space = ParkingSpace.new
  end

  def create
    @parking_space = ParkingSpace.new(parking_space_params)
    @parking_space.garage_id = @garage.id
    if @parking_space.save
      flash[:notice] = "Parking space created!"
      redirect_to parking_space_path(@parking_space)
    else
      render :new
    end
  end

  def change_status
    @parking_space = ParkingSpace.find(params[:id])
    @parking_space.update(status: params[:status].to_i) if params[:status].present?
    redirect_to users_dashboard_path
  end

  private

  def set_garage
    @garage = Garage.find(params[:garage_id])
  end

  def parking_space_params
    params.require(:parking_space).permit(:custom_size, :custom_price, :title)
  end
end
