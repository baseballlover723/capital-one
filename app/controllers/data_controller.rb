class DataController < ApplicationController
  def index
    @id = params[:id]
    @customer = Customer.find(@id)
    @accounts = @customer.accounts

    @bills = Bill.where account: @accounts
    @deposits = Deposit.where account: @accounts
    @purchases = Purchase.where account: @accounts
    @withdraws = Withdraw.where account: @accounts
    @payer_transfers = Transfer.select("*").joins(:payer).where(payer: @accounts)
    @payee_transfers = Transfer.select("*").joins(:payee).where(payer: @accounts)
    @atms = Atm.where account: @accounts

    gon.graphBills = @bills
    gon.graphDeposit = @deposits
    gon.graphPurchases = @purchases
    gon.graphPayerTransfers = @payer_transfers
    gon.graphPayeeTransfers = @payee_transfers
    gon.graphWithdraws = @withdraws
    gon.atms = @atms



    # todo make json file
    gon.id = @id;
    gon.accounts = @accounts
    gon.bills = @bills
    # gon.customers = @customers
    gon.deposits = @deposits
    gon.merchants = @merchants
    gon.purchases = @purchases
    gon.transfers = @transfers
    gon.withdraws = @withdraws

  end
end
