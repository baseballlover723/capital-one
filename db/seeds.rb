def load
  50.times do
    generate_random_merchant
  end
  25.times do
    customer = generate_random_customer
    account = generate_random_account customer
    10.times do
      generate_random_purchase account
      generate_random_deposit account
      generate_random_withdraw account
    end
    5.times do
      generate_random_atm account
      generate_random_bill account
    end

  end

  250.times do
    generate_random_transfer
  end


  puts "completed seeding"
end

def generate_random_customer
  Customer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, street_number: Faker::Address.street_address.split(" ")[0],
                  street_name: Faker::Address.street_name, city: Faker::Address.city, state: Faker::Address.state, zip: Faker::Address.zip)
end

def generate_random_merchant
  Merchant.create(name: Faker::Company.name, category: Faker::Commerce.department(1, true), street_number: Faker::Address.street_address.split(" ")[0],
                  street_name: Faker::Address.street_name, city: Faker::Address.city, state: Faker::Address.state, zip: Faker::Address.zip,
                  lat: Faker::Address.latitude, lng: Faker::Address.longitude)
end

def generate_random_purchase(account = Account.all.sample, merchant = Merchant.all.sample)
  date = Faker::Time.backward(14)
  Purchase.create(purchase_type: "merchant", merchant: merchant, account: account, purchase_date: date,
                  amount: Faker::Commerce.price(200), status: "completed", "medium": "balance", description: "Bought a #{Faker::Commerce.product_name}")
end

def generate_random_account(customer = Customer.all.sample)
  card_type = Faker::Business.credit_card_type
  Account.create(account_type: card_type, nickname: "#{customer.first_name} #{customer.last_name}'s #{card_type}",
                 rewards: Faker::Number.decimal(3, 2), balance: Faker::Number.decimal(6, 2), customer: customer)
end

def generate_random_atm(account = Account.all.sample)
  Atm.create(name: "ATM", lat: Faker::Address.latitude, lng: Faker::Address.longitude, account: account)
end

def generate_random_bill(account = Account.all.sample)
  Bill.create(status: "completed", payee: "#{account.customer.first_name} #{account.customer.last_name}", nickname: Faker::Company.catch_phrase, creation_date: Faker::Time.backward(365),
              payment_date: Faker::Time.forward(30), recurring_date: 0, upcoming_payment_date: Faker::Time.forward(30),
              payment_amount: Faker::Commerce.price(400), account: account)
end

def generate_random_deposit(account = Account.sample)
  Deposit.create(deposit_type: "deposit", transaction_date: Faker::Time.backward(30), status: "completed",
                 medium: "balance", amount: Faker::Commerce.price(500), description: Faker::Company.catch_phrase, account: account)
end

def generate_random_withdraw(account = Account.sample)
  Withdraw.create(withdraw_type: "withdraw", transaction_date: Faker::Time.backward(30), status: "completed",
                  medium: "balance", amount: Faker::Commerce.price(200), description: Faker::Company.catch_phrase, account: account)
end

def generate_random_transfer(payer = Account.all.sample, payee = Account.all.sample)
  Transfer.create(transfer_type: "p2p", transaction_date: Faker::Time.backward(30), status: "completed",
                  medium: "balanece", amount: Faker::Commerce.price(200), description: Faker::Company.catch_phrase, payer: payer, payee: payee)
end

load