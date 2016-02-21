def load
  m1 = Merchant.create(id: 1, name: "Chipotle", category: "Food", street_number: "528", street_name: "East Green Street", city: "Champaign", zip: "61820", lat: "40.11", lng: "-88.30")
  m2 = Merchant.create(id: 2, name: "Starbucks", category: "Food", street_number: "503", street_name: "East Green Street", city: "Champaign", zip: "61820", lat: "40.10", lng: "-88.30")
  m3 = Merchant.create(id: 3, name: "McDonalds", category: "Food", street_number: "616", street_name: "East Green Street", city: "Champaign", zip: "61820", lat: "40.11", lng: "-88.29")
  m4 = Merchant.create(id: 4, name: "Walmart", category: "Retail", street_number: "2610", street_name: "North Prospect Avenue", city: "Champaign", zip: "61822", lat: "40.14", lng: "-88.32")
  m5 = Merchant.create(id: 5, name: "Holiday Inn", category: "Hotel", street_number: "1003", street_name: "West Killarney Street", city: "Urbana", zip: "61801", lat: "40.13", lng: "-88.29")
  m6 = Merchant.create(id: 6, name: "Amazon", category: "Retail", street_number: "528", street_name: "East Green Street", city: "Champaign", zip: "61820", lat: "39.946", lng: "-86.734")
  m7 = Merchant.create(id: 7, name: "Kroger", category: "Food", street_number: "503", street_name: "East Green Street", city: "Champaign", zip: "61820", lat: "40.1126", lng: "-88.218")
  m8 = Merchant.create(id: 8, name: "Supercuts", category: "Services", street_number: "616", street_name: "East Green Street", city: "Champaign", zip: "61820", lat: "40.0753", lng: "-88.322")
  m9 = Merchant.create(id: 9, name: "AMC Movie Theater", category: "Retail", street_number: "2610", street_name: "North Prospect Avenue", city: "Champaign", zip: "61822", lat: "40.075", lng: "-88.254")
  m10 = Merchant.create(id: 10, name: "Home Depot", category: "Retail", street_number: "820 ", street_name: "Bloomington ", city: "Urbana", zip: "61801", lat: "40.133", lng: "-88.256")

  m12 = Merchant.create(id: 12, name: "Starbucks", category: "Food", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Terre Haute", zip: "61801", lat: "39.5107939272", lng: "-87.4024553678")
  m13 = Merchant.create(id: 13, name: "Home Depot", category: "Retail", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Terre Haute", zip: "61801", lat: "39.5318883867", lng: "-87.4421859863")
  m14 = Merchant.create(id: 14, name: "Amazon", category: "Retail", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Terre Haute", zip: "61801", lat: "39.5157500833", lng: "-87.4685364938")
  m15 = Merchant.create(id: 15, name: "Walmart", category: "Retail", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Terre Haute", zip: "61801", lat: "39.5116076655", lng: "-87.4213754504")
  m16 = Merchant.create(id: 16, name: "Chipotle", category: "Food", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Terre Haute", zip: "61801", lat: "39.4552020995", lng: "-87.4097545229")
  m17 = Merchant.create(id: 17, name: "Amazon", category: "Retail", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Terre Haute", zip: "61801", lat: "39.4606930119", lng: "-87.4116807815")


  m20 = Merchant.create(id: 20, name: "Supercuts", category: "Services", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Seattle", zip: "61801", lat: "47.6286494695", lng: "-122.540462803")
  m21 = Merchant.create(id: 21, name: "McDonalds", category: "Food", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Seattle", zip: "61801", lat: "47.6003709605", lng: "-122.434010589")
  m22 = Merchant.create(id: 22, name: "Capital One", category: "Bank", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Seattle", zip: "61801", lat: "47.5633769323", lng: "-122.462557874")
  m23 = Merchant.create(id: 23, name: "Capital One", category: "Bank", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Seattle", zip: "61801", lat: "47.6167315238", lng: "-122.410783568")
  m24 = Merchant.create(id: 24, name: "AMC Movie Theater", category: "Retail", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Seattle", zip: "61801", lat: "47.5863690422", lng: "-122.527225799")
  m25 = Merchant.create(id: 25, name: "Kroger", category: "Food", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Seattle", zip: "61801", lat: "47.6579932708", lng: "-122.440059029")

  m30 = Merchant.create(id: 30, name: "Starbucks", category: "Food", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Las Vegas", zip: "61801", lat: "36.1413960461", lng: "-115.324812931")
  m31 = Merchant.create(id: 31, name: "Amazon", category: "Retail", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Las Vegas", zip: "61801", lat: "36.1006576921", lng: "-115.30518889")
  m32 = Merchant.create(id: 32, name: "Holiday Inn", category: "Hotel", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Las Vegas", zip: "61801", lat: "36.1240596568", lng: "-115.333319704")
  m33 = Merchant.create(id: 33, name: "McDonalds", category: "Food", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Las Vegas", zip: "61801", lat: "36.1018046237", lng: "-115.340079479")
  m34 = Merchant.create(id: 34, name: "Home Depot", category: "Retail", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Las Vegas", zip: "61801", lat: "36.1170355156", lng: "-115.350784265")
  m35 = Merchant.create(id: 35, name: "Chipotle", category: "Food", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Las Vegas", zip: "61801", lat: "36.1552938659", lng: "-115.366826026")


  # 50.times do
  #   generate_random_merchant
  # end
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