class DataController < ApplicationController
  def index
    @id = params[:id]
    @customer = Customer.find(@id)
    @accounts = @customer.accounts
    @accounts.each do |account|
      account
    end
    @bills = Bill.all
    @customers = Customer.all
    @deposits = Deposit.all
    @merchants = Merchant.all
    @purchases = Purchase.all
    @transfers = Transfer.all
    @withdraws = Withdraw.all

    gon.id = @id;
    gon.accounts = @accounts
    gon.bills = @bills
    gon.customers = @customers
    gon.deposits = @deposits
    gon.merchants = @merchants
    gon.purchases = @purchases
    gon.transfers = @transfers
    gon.withdraws = @withdraws
  end
end
