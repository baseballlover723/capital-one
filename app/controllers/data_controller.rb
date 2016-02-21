class DataController < ApplicationController
  def index
    @id = params[:id]
    @customer = Customer.find(@id)
    @accounts = @customer.accounts
    @bills = []
    @accounts.each do |account|
      @bills += account.bills
    end
    @bills.each do |bill|
      puts bill.to_json
    end
    @bills = Bill.all
    @customers = Customer.all
    @deposits = Deposit.all
    @merchants = Merchant.all
    @purchases = Purchase.all
    @transfers = Transfer.all
    @withdraws = Withdraw.all
    @atms = Atm.all

    gon.id = @id;
    gon.accounts = @accounts
    gon.bills = @bills
    gon.customers = @customers
    gon.deposits = @deposits
    gon.merchants = @merchants
    gon.purchases = @purchases
    gon.transfers = @transfers
    gon.withdraws = @withdraws
    gon.atms = @atms

    gon.graphBills = Bill.where(account: @accounts)
    gon.graphDeposit = Deposit.where(account: @accounts)
    gon.graphPurchases = Purchase.where(account: @accounts)
    gon.graphPayerTransfers = Transfer.select("*").joins(:payer).where(payer: @accounts)
    gon.graphPayeeTransfers = Transfer.select("*").joins(:payee).where(payee: @accounts)
    gon.graphWithdraws = Withdraw.where(account: @accounts);
  end
end
