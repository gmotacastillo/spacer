class ClientsController < ApplicationController
  def index
    @clients = Client.where(user: current_user)
  end

  def show
    @client = Client.find(params[:id])
    @invoice = @client.invoice
  end

  def new
    @client = Client.new
  end

  def create
    @client = client.new(client_params)
    @client.user = current_user
    if @client.save
      redirect_to users_dashboard_path
    else
      render :new
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def updated
    @client = Client.find(params[:id])
    @client.update(client_params)
    redirect_to client_path(@client)
  end

  def destroy
    @client = client.find(params[:id])
    @client.destroy
    redirect_to clients_path, status: :see_other
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :phone_number, :email, :company)
  end
end