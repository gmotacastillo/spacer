class ParkingSpacesController < ApplicationController
  before_action :set_garage, only: %i[new create]
  def index
    @garages = Garage.where("user_id = ?", current_user.id)
    @parking_spaces = ParkingSpace.first(5)
    @parking_spaces = ParkingSpace.where(garage_id: params[:garage_id]) if params[:garage_id]
    @parking_spaces = @parking_spaces.select { |parking_spot| !parking_spot.invoices.any? { |invoice| invoice.end_date > Date.parse(params[:start_date]) && invoice.start_date <= Date.parse(params[:end_date])}} if params[:start_date]
    respond_to do |format|
      format.text { render partial: 'parking_spaces', formats: [:html] }
    end
  end

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

  private

  def set_garage
    @garage = Garage.find(params[:garage_id])
  end

  def parking_space_params
    params.require(:parking_space).permit(:custom_size, :custom_price, :title)
  end
end
