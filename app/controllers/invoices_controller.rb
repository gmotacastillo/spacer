class InvoicesController < ApplicationController
  before_action :set_client, only: %i[new create]

  def show
    @invoice = Invoice.find(params[:id])
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.client_id = @client.id
    if @invoice.save
      flash[:notice] = "Invoice created!"
      redirect_to invoice_path(@invoice)
    else
      render :new
    end
  end

  private

  def set_client
    @client = Client.find(params[:client_id])
  end

  def invoice_params
    params.require(:invoice).permit(:custom_size, :custom_price, :title)
  end
end
