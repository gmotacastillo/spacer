class InvoicesController < ApplicationController
  # before_action :set_client, only: %i[new create]

  def show
    @invoice = Invoice.find(params[:id])
  end

  def new
    @invoice = Invoice.new
    @garages = current_user.garages
  end

  def create
    @invoice = Invoice.new(invoice_params)

    #setting client
    if params[:client_id].present?
      @client = Client.find(params[:client_id])
    else
      name = params[:invoice][:clients][:first_name]
      last_name = params[:invoice][:clients][:last_name]
      phone_number = params[:invoice][:clients][:phone_number]
      email = params[:invoice][:clients][:email]
      company = params[:invoice][:clients][:company]
      @client = Client.create(user_id: current_user.id, first_name: name, last_name: last_name, phone_number: phone_number, email: email, company: company)
    end
    @invoice.client_id = @client.id

    # adding parking spaces
    parking_spaces = ParkingSpace.find(params[:parking_space])
    @invoice.parking_spaces << parking_spaces

    if @invoice.save!
      # calculating price
      number_of_days = (@invoice.end_date - @invoice.start_date).to_i + 1
      total = parking_spaces.map{ |e| (e.garage.price * number_of_days) if e.garage.price.present? }.sum
      @invoice.update(price: total)
      redirect_to invoice_path(@invoice)
    else
      render :new
    end
  end

  private

  # def set_client
  #   @client = Client.find(params[:client_id]) ? Client.find(params[:client_id]) : Client.create()
  # end

  def invoice_params
    params.require(:invoice).permit(:start_date, :end_date, :client_id)
    # params.require(:client).permit(:first_name, :last_name, :phone_number, :email, :company)
  end

  # def client_params
  #   params.require(:invoice).require(:clients).permit(:first_name, :last_name, :phone_number, :email, :company)
  # end
end
