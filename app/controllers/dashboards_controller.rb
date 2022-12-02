require "date"

class DashboardsController < ApplicationController
  def index
    @user = current_user
    #garages infos
    @garages = current_user.garages
    @number_of_garages = current_user.garages.count
    #parkingspace infos
    @parking_spaces = current_user.parking_spaces
    @number_of_parking_spaces = current_user.parking_spaces.count
    #clients infos
    @clients = current_user.clients
    @number_of_clients = current_user.clients.count
    #invoice info

    @number_of_invoices_total = current_user.invoices.count
    @invoices_aktiv = current_user.invoices.select { |invoice| invoice.end_date.after?(Date.today) && invoice.start_date.before?(Date.today)}
    #total income
    @all_invoices = current_user.invoices
    @sum = 0
    @all_invoices.each do |invoice|
    @sum += invoice.price
    end
    #users -> clients -> invoices(price)
    #@total_income=
  end
end
