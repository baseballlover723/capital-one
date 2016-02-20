class DataController < ApplicationController
  def index
    @purchases = Purchase.all
    @merchants = Merchant.all
    @customers = Customer.all
    @accounts = Account.all
    
  end

  def giveUserData
  end
end
