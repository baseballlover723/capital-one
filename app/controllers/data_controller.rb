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
  end

  def giveUserData
  end
end
