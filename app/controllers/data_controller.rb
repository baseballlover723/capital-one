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
    @json = {
        "name": "Monitary Transactions",
        "children": [
            {
                "name": "Money In",
                "children": [
                    {
                        "name": "Deposit",
                        "children": [
                            # {"name": "CommunityStructure", "size": 3812},
                        ]
                    },
                    {
                        "name": "Transfer In",
                        "children": [
                            # {"name": "BetweennessCentrality", "size": 3534},
                        ]
                    }
                ]
            },
            {
                "name": "Money Out",
                "children": [
                    {
                        "name": "Withdrawl",
                        "children": [
                            # {"name": "ArrayInterpolator", "size": 1983},
                        ]
                    },
                    {
                        "name": "Transfer Out",
                        "children": [
                            # {"name": "Scheduler", "size": 5593},
                        ]
                    },
                    {
                        "name": "Purchase",
                        "children": [
                            # {"name": "DragForce", "size": 1082},
                        ]
                    }
                ]
            }
        ]
    }

    children_array = @json[:children][0][:children][0][:children]
    @deposits.each do |deposite|
      children_array << {name: deposite.description, size: deposite.amount}
    end

    children_array = @json[:children][0][:children][1][:children]
    @payee_transfers.each do |transfer|
      children_array << {name: transfer.description, size: transfer.amount}
    end

    children_array = @json[:children][1][:children][0][:children]
    @withdraws.each do |withdraw|
      children_array << {name: withdraw.description, size: withdraw.amount}
    end

    children_array = @json[:children][1][:children][1][:children]
    @payer_transfers.each do |transfer|
      children_array << {name: transfer.description, size: transfer.amount}
    end

    children_array = @json[:children][1][:children][2][:children]
    @purchases.each do |purchase|
      children_array << {name: purchase.description, size: purchase.amount}
    end

    gon.graphBills = @bills
    gon.graphDeposit = @deposits
    gon.graphPurchases = @purchases
    gon.graphPayerTransfers = @payer_transfers
    gon.graphPayeeTransfers = @payee_transfers
    gon.graphWithdraws = @withdraws
    gon.atms = @atms
    gon.jsonFile = @json

# do we need below?
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
