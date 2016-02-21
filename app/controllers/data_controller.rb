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
      children_array << {name: deposite.description, size: deposite.amount.to_i}
    end
    children_array << {name: "No Deposits", size: 0} if @deposits.empty?

    children_array = @json[:children][0][:children][1][:children]
    @payee_transfers.each do |transfer|
      children_array << {name: transfer.description, size: transfer.amount.to_i}
    end
    children_array << {name: "No Incoming Transfers", size: 0} if @payee_transfers.empty?

    children_array = @json[:children][1][:children][0][:children]
    @withdraws.each do |withdraw|
      children_array << {name: withdraw.description, size: withdraw.amount.to_i}
    end
    children_array << {name: "No Withdraws", size: 0} if @withdraws.empty?

    children_array = @json[:children][1][:children][1][:children]
    @payer_transfers.each do |transfer|
      children_array << {name: transfer.description, size: transfer.amount.to_i}
    end
    children_array << {name: "No Outgoing Transfers", size: 0} if @payer_transfers.empty?

    children_array = @json[:children][1][:children][2][:children]
    @purchases.each do |purchase|
      children_array << {name: purchase.description, size: purchase.amount.to_i}
    end
    children_array << {name: "No Purchases", size: 0} if @purchases.empty?

    writeJsonFile @json

    gon.graphBills = @bills
    gon.graphDeposit = @deposits
    gon.graphPurchases = @purchases
    gon.graphPayerTransfers = @payer_transfers
    gon.graphPayeeTransfers = @payee_transfers
    gon.graphWithdraws = @withdraws
    gon.atms = @atms

# do we need below?
    gon.id = @id;
    gon.accounts = @accounts
    gon.bills = @bills
# gon.customers = @customers
    gon.deposits = @deposits
    gon.merchants = Merchant.all
    gon.purchases = Purchase.all
    gon.transfers = @transfers
    gon.withdraws = @withdraws

    load_close_customers @customer
  end

  def writeJsonFile(object)
    File.open("public/myJsonFile.json", "w") do |f|
      f.write(object.to_json)
    end
  end

  def load_close_customers(customer)
    customer_categories = load_categories customer

    others = {}
    Customer.all.each do |c|
      unless c == customer
        others[c] = load_categories c
      end
    end
    puts customer_categories.to_json
    puts "others"
    others.each do |key, value|
      puts "#{key.first_name} #{key.last_name}: #{value.to_json}"
    end
    is_similar customer_categories, others, 10
  end

  def is_similar(customer_categories, others, threshhold)
    # customer
  end

  def load_categories(customer)
    categories = {}
    puts customer
    total = 0
    customer.accounts.each do |account|
      account.purchases.each do |purchase|
        category = purchase.merchant.category
        add_category categories, category, purchase.amount
        total += purchase.amount
        puts purchase.to_json
      end
    end
    categories.each do |category, value|
      categories[category] = value / total.to_f
    end
    puts categories.to_json
    {size: total, categories: categories}
  end

  def add_category(categories, category, amount)
    categories[category] = 0 unless categories[category]
    categories[category] += amount
  end

end
