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
    # @customer_similar = {size:4908.9,categories:{Retail:0.818629428181466316282670252,Food:0.162639287824156124590030353,Services:0.018731283994377559127299395}}

    # @similar = [Luke Miller: {"size":"2551.93","categories":{"Food":"0.129164984932972299396927032","Retail":"0.821233341039918806550336412","Services":"0.049601674027108894052736556"}}
    # Nathan Blank: {"size":"5167.34","categories":{"Retail":"0.840836871581897068898117794","Services":"0.095494006587528593047873761","Food":"0.020424435009114941149605019","Hotel":"0.043244686821459396904403426"}}

    customer_categories = load_categories customer
    @customer_categories = customer_categories
    gon.customer_categories = @customer_categories

    others = []
    Customer.all.each do |c|
      unless c == customer
        others << load_categories(c)
      end
    end
    # puts customer_categories.to_json
    # puts "others"
    # others.each do |key, value|
    #   puts "#{key.first_name} #{key.last_name}: #{value.to_json}"
    # end
    # puts others.as_json
    is_similar customer_categories, others, 1.1
  end

  def is_similar(customer_categories, others, threshhold)
    @similar_customers = []
    categories = customer_categories[:categories]
    c1={category: "", value: 0}
    c2={category: "", value: 0}
    categories.each do |category, value|
      if value > c1[:value]
        c2 = c1
        c1 = {category: category, value: value}
      elsif value > c2[:value]
        c2 = {category: category, value: value}
      end
    end
    # puts c1.as_json
    # puts c2.as_json
    # puts ""
    others.each do |other|
      # puts other.as_json
      dif1 = ((other[:categories][c1[:category]] || 0) - c1[:value]).abs
      dif2 = ((other[:categories][c2[:category]] || 0) - c2[:value]).abs
      # puts "original value: #{c1[:value].round(4)}, other_value: #{(other[:categories][c1[:category]] || 0).round(4)}, dif: #{dif1.round(4)}, #{c1[:category]}"
      # puts "original value: #{c2[:value].round(4)}, other_value: #{(other[:categories][c2[:category]] || 0).round(4)}, dif: #{dif2.round(4)}, #{c2[:category]}"
      dif = (1- c1[:value]) * dif1 + (1-c2[:value]) * dif2 # the magic formula for similarity
      # puts "dif: #{dif.round(4)}"
      similar = {customer: other[:customer], accounts: other[:customer].accounts, similarity: 1 - dif, percent1: (other[:categories][c1[:category]] || 0), percent2: (other[:categories][c2[:category]] || 0)}
      @similar_customers << similar if dif < threshhold
    end
    @similar_customers.sort! {|x, y| y[:similarity] <=> x[:similarity]}
    gon.similar_customers = @similar_customers
  end

  def load_categories(customer)
    categories = {}
    total = 0
    customer.accounts.each do |account|
      account.purchases.each do |purchase|
        category = purchase.merchant.category
        add_category categories, category, purchase.amount
        total += purchase.amount
      end
    end
    categories.each do |category, value|
      categories[category] = value / total.to_f
    end
    {size: total, categories: categories, customer: customer}
  end

  def add_category(categories, category, amount)
    categories[category] = 0 unless categories[category]
    categories[category] += amount
  end
end
