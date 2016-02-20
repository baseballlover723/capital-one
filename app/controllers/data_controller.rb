class DataController < ApplicationController
  def index
    @accounts = Account.all
    @bills = Bill.all
    @customers = Customer.all
    @deposits = Deposit.all
    @merchants = Merchant.all
    @purchases = Purchase.all
    @transfers = Transfer.all
    @withdraws = Withdraw.all

    gon.accounts = @accounts
    gon.bills = @bills
    gon.customers = @customers
    gon.deposits = @deposits
    gon.merchants = @merchants
    gon.purchases = @purchases
    gon.transfers = @transfers
    gon.withdraws = @withdraws
  end

  def giveUserData
  end
end
