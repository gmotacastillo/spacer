class GaragesController < ApplicationController
  def index
    @garages = Garage.where(user: current_user)
  end

  def show
    @garage = Garage.find(params[:id])
    @parking_spaces = @garage.parking_spaces
  end

  def new
    @garage = Garage.new
  end

  def create
    @garage = Garage.new(garage_params)
    @garage.user = current_user
    if @garage.save
      redirect_to users_dashboard_path
    else
      render :new
    end
  end

  def edit
    @garage = Garage.find(params[:id])
  end

  def updated
    @garage = Garage.find(params[:id])
    @garage.update(garage_params)
    redirect_to garage_path(@garage)
  end

  def destroy
    @garage = Garage.find(params[:id])
    @garage.destroy
    redirect_to garages_path, status: :see_other
  end

  private

  def garage_params
    params.require(:garage).permit(:name, :location, :price, :average_size, :description, :capacity)
  end
end
