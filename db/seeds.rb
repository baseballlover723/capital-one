m1 = Merchant.create(id: 1, name: "Chipotle", category: "Food", street_number: "528", street_name: "East Green Street", city: "Champaign", zip: "61820", lat: "40.11", lng: "-88.30")
m2 = Merchant.create(id: 94, name: "Starbucks", category: "Food", street_number: "503", street_name: "East Green Street", city: "Champaign", zip: "61820", lat: "40.10", lng: "-88.30")
m3 = Merchant.create(id: 5132, name: "McDonalds", category: "Food", street_number: "616", street_name: "East Green Street", city: "Champaign", zip: "61820", lat: "40.11", lng: "-88.29")
m4 = Merchant.create(id: 1023, name: "Walmart", category: "Retail", street_number: "2610", street_name: "North Prospect Avenue", city: "Champaign", zip: "61822", lat: "40.14", lng: "-88.32")
m5 = Merchant.create(id: 834, name: "Holiday Inn", category: "Hotel", street_number: "1003", street_name: "West Killarney Street", city: "Urbana", zip: "61801", lat: "40.13", lng: "-88.29")

m6 = Merchant.create(id: 2, name: "Amazon", category: "Retail", street_number: "528", street_name: "East Green Street", city: "Champaign", zip: "61820", lat: "39.946", lng: "-86.734")
m7 = Merchant.create(id: 3, name: "Kroger", category: "Food", street_number: "503", street_name: "East Green Street", city: "Champaign", zip: "61820", lat: "40.1126", lng: "-88.218")
m8 = Merchant.create(id: 4, name: "Supercuts", category: "Services", street_number: "616", street_name: "East Green Street", city: "Champaign", zip: "61820", lat: "40.0753", lng: "-88.322")
m9 = Merchant.create(id: 5, name: "AMC Movie Theater", category: "Retail", street_number: "2610", street_name: "North Prospect Avenue", city: "Champaign", zip: "61822", lat: "40.075", lng: "-88.254")
m10 = Merchant.create(id: 6, name: "Home Depot", category: "Retail", street_number: "820 ", street_name: "Bloomington ", city: "Urbana", zip: "61801", lat: "40.133", lng: "-88.256")



c1 = Customer.create(id: 5, first_name: "Luke", last_name: "Miller", street_number: "6969", street_name: "ohio street", city: "Dayton", state: "Ohio", zip: "53244")
c2 = Customer.create(id: 693, first_name: "Nathan", last_name: "Blank", street_number: "42", street_name: "donkey", city: "Chicago", state: "Illinios", zip: "65843")
c3 = Customer.create(id: 6092, first_name: "Jeremy", last_name: "Wright", street_number: "52", street_name: "weaboo drive", city: "tokyo", state: "Japan", zip: "N/A")

a1 = Account.create(id: 123, account_type: "Credit Card", nickname: "Luke's Credit Card", rewards: 100.08, balance: 1_000_000.00, customer: c1)
a4 = Account.create(id: 999, account_type: "Savings", nickname: "Luke's Savings", rewards: 0.00, balance: 50.00, customer: c1)
a3 = Account.create(id: 7, account_type: "Checking", nickname: "Jeremy's checking", rewards: 5.14, balance: 56_357.40, customer: c3)

a2 = Account.create(id: 1111, account_type: "Savings", nickname: "Luke's Savings", rewards: 0.00, balance: 2430.00, customer: c2)


p1 = Purchase.create(id: 1234, purchase_type: "merchant", merchant: m1, account: a3, purchase_date: DateTime.iso8601("2016-02-15"),
                     amount: 524.31, status: "pending", "medium": "balance", description: "Jeremey bought some expensive clothes stuff from Andrew")
p2 = Purchase.create(id: 4231, purchase_type: "merchant", merchant: m2, account: a3, purchase_date: DateTime.iso8601("2015-12-15"),
                     amount: 700000.00, status: "pending", "medium": "balance", description: "Jeremey bought a league team from Philip")
p3 = Purchase.create(id: 332, purchase_type: "merchant", merchant: m3, account: a1, purchase_date: DateTime.iso8601("2015-07-12"),
                     amount: 76.31, status: "pending", "medium": "balance", description: "Luke bought some reeds from zanes music shop")
p4 = Purchase.create(id: 14, purchase_type: "merchant", merchant: m1, account: a1, purchase_date: DateTime.iso8601("2016-01-15"),
                     amount: 2530.31, status: "declinded", "medium": "balance", description: "Luke got black out drunk and spent all of his retierment fund on expensive clothes from Andrew silk shop")

p5 = Purchase.create(id: 555, purchase_type: "merchant", merchant: m1, account: a2, purchase_date: DateTime.iso8601("2015-01-15"),
                     amount: 24.31, status: "completed", "medium": "balance", description: "Bought burritos")
p6 = Purchase.create(id: 556, purchase_type: "merchant", merchant: m2, account: a2, purchase_date: DateTime.iso8601("2015-02-24"),
                     amount: 9.83, status: "completed", "medium": "balance", description: "Purchased coffee")
p7 = Purchase.create(id: 557, purchase_type: "merchant", merchant: m3, account: a2, purchase_date: DateTime.iso8601("2015-03-02"),
                     amount: 7.91, status: "completed", "medium": "balance", description: "Purchased a Happy Meal")
p8 = Purchase.create(id: 558, purchase_type: "merchant", merchant: m4, account: a2, purchase_date: DateTime.iso8601("2015-04-30"),
                     amount: 56.56, status: "completed", "medium": "balance", description: "Bought groceries")
p9 = Purchase.create(id: 559, purchase_type: "merchant", merchant: m5, account: a2, purchase_date: DateTime.iso8601("2015-05-11"),
                     amount: 126.73, status: "completed", "medium": "balance", description: "Nathan stayed at a hotel for the night")
p10 = Purchase.create(id: 655, purchase_type: "merchant", merchant: m1, account: a2, purchase_date: DateTime.iso8601("2015-06-15"),
                     amount: 12.21, status: "completed", "medium": "balance", description: "Bought burritos")
p11 = Purchase.create(id: 656, purchase_type: "merchant", merchant: m2, account: a2, purchase_date: DateTime.iso8601("2015-07-24"),
                     amount: 19.83, status: "completed", "medium": "balance", description: "Purchased coffee")
p12 = Purchase.create(id: 657, purchase_type: "merchant", merchant: m3, account: a2, purchase_date: DateTime.iso8601("2015-08-02"),
                     amount: 17.91, status: "completed", "medium": "balance", description: "Purchased a Big Mac")
p13 = Purchase.create(id: 658, purchase_type: "merchant", merchant: m4, account: a2, purchase_date: DateTime.iso8601("2015-09-29"),
                     amount: 86.56, status: "completed", "medium": "balance", description: "Bought groceries")
p14 = Purchase.create(id: 659, purchase_type: "merchant", merchant: m5, account: a2, purchase_date: DateTime.iso8601("2015-10-11"),
                     amount: 96.73, status: "completed", "medium": "balance", description: "Nathan stayed at a hotel for the night")
p15 = Purchase.create(id: 755, purchase_type: "merchant", merchant: m1, account: a2, purchase_date: DateTime.iso8601("2015-11-15"),
                     amount: 8.71, status: "completed", "medium": "balance", description: "Bought burritos")
p16 = Purchase.create(id: 756, purchase_type: "merchant", merchant: m2, account: a2, purchase_date: DateTime.iso8601("2015-12-24"),
                     amount: 4.83, status: "completed", "medium": "balance", description: "Purchased coffee")

# Amazon
p8 = Purchase.create(id: 558, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-04-30"),
                     amount: 56.56, status: "completed", "medium": "balance", description: "Bought groceries")
p9 = Purchase.create(id: 559, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-05-11"),
                     amount: 126.73, status: "completed", "medium": "balance", description: "Nathan stayed at a hotel for the night")
p10 = Purchase.create(id: 655, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-06-15"),
                     amount: 12.21, status: "completed", "medium": "balance", description: "Bought burritos")
p11 = Purchase.create(id: 656, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-07-24"),
                     amount: 19.83, status: "completed", "medium": "balance", description: "Purchased coffee")
p12 = Purchase.create(id: 657, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-08-02"),
                     amount: 17.91, status: "completed", "medium": "balance", description: "Purchased a Big Mac")
p13 = Purchase.create(id: 658, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-09-29"),
                     amount: 86.56, status: "completed", "medium": "balance", description: "Bought groceries")
p14 = Purchase.create(id: 659, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-10-11"),
                     amount: 96.73, status: "completed", "medium": "balance", description: "Nathan stayed at a hotel for the night")
p15 = Purchase.create(id: 755, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-11-15"),
                     amount: 8.71, status: "completed", "medium": "balance", description: "Bought burritos")
p16 = Purchase.create(id: 756, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-12-24"),
                     amount: 4.83, status: "completed", "medium": "balance", description: "Purchased coffee")

#
p8 = Purchase.create(id: 558, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-04-30"),
                    amount: 56.56, status: "completed", "medium": "balance", description: "Bought groceries")
p9 = Purchase.create(id: 559, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-05-11"),
                    amount: 126.73, status: "completed", "medium": "balance", description: "Nathan stayed at a hotel for the night")
p10 = Purchase.create(id: 655, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-06-15"),
                    amount: 12.21, status: "completed", "medium": "balance", description: "Bought burritos")
p11 = Purchase.create(id: 656, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-07-24"),
                    amount: 19.83, status: "completed", "medium": "balance", description: "Purchased coffee")
p12 = Purchase.create(id: 657, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-08-02"),
                    amount: 17.91, status: "completed", "medium": "balance", description: "Purchased a Big Mac")
p13 = Purchase.create(id: 658, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-09-29"),
                    amount: 86.56, status: "completed", "medium": "balance", description: "Bought groceries")
p14 = Purchase.create(id: 659, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-10-11"),
                    amount: 96.73, status: "completed", "medium": "balance", description: "Nathan stayed at a hotel for the night")
p15 = Purchase.create(id: 755, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-11-15"),
                    amount: 8.71, status: "completed", "medium": "balance", description: "Bought burritos")
p16 = Purchase.create(id: 756, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-12-24"),
                    amount: 4.83, status: "completed", "medium": "balance", description: "Purchased coffee")

















b1 = Bill.create(id: 15, status: "completed", payee: "Jeremy", nickname: "weaboo tax", creation_date: DateTime.iso8601("1995-07-17"),
                 payment_date: DateTime.iso8601("1995-07-27"), recurring_date: 485, upcoming_payment_date: DateTime.iso8601("2016-02-22"),
                 payment_amount: 58603.32, account: a3)
b2 = Bill.create(id: 944, status: "completed", payee: "Luke", nickname: "Luke's unfair government tax", creation_date: DateTime.iso8601("20150525"),
                 payment_date: DateTime.iso8601("2016-01-01"), recurring_date: 15, upcoming_payment_date: DateTime.iso8601("20160217"),
                 payment_amount: 4458754.99, account: a2)
b3 = Bill.create(id: 921, status: "completed", payee: "Luke", nickname: "Luke's netflix and chill bill", creation_date: DateTime.iso8601("20131019"),
                 payment_date: DateTime.iso8601("2016-03-19"), recurring_date: 12, upcoming_payment_date: DateTime.iso8601("20160319"),
                 payment_amount: 69.99, account: a1)

b4 = Bill.create(id: 2, status: "completed", payee: "Comcast", nickname: "Nathan didn't pay the government", creation_date: DateTime.iso8601("2015-05-25"),
                 payment_date: DateTime.iso8601("2015-05-26"), recurring_date: 15, upcoming_payment_date: DateTime.iso8601("2015-10-17"),
                 payment_amount: 108.99, account: a2)
b5 = Bill.create(id: 3, status: "completed", payee: "Trunk Club", nickname: "Nathan owed money", creation_date: DateTime.iso8601("2015-10-17"),
                 payment_date: DateTime.iso8601("2015-10-18"), recurring_date: 12, upcoming_payment_date: DateTime.iso8601("2016-03-19"),
                 payment_amount: 69.99, account: a2)


d1 = Deposit.create(id: 512, deposit_type: "deposit", transaction_date: DateTime.iso8601("2016-02-20"), status: "completed",
                    medium: "balance", amount: 84.66, description: "Micky d's paycheck", account: a3)
d2 = Deposit.create(id: 24, deposit_type: "deposit", transaction_date: DateTime.iso8601("2016-01-12"), status: "completed",
                    medium: "balance", amount: 500084.66, description: "Mom died and get me her millions", account: a1)
d3 = Deposit.create(id: 1543, deposit_type: "deposit", transaction_date: DateTime.iso8601("2016-02-25"), status: "completed",
                    medium: "balance", amount: 10.00, description: "found a ten on the ground", account: a1)

d4 = Deposit.create(id: 545, deposit_type: "deposit", transaction_date: DateTime.iso8601("2015-09-20"), status: "completed",
                    medium: "balance", amount: 84.66, description: "Paycheck", account: a2)
d5 = Deposit.create(id: 546, deposit_type: "deposit", transaction_date: DateTime.iso8601("2015-01-12"), status: "completed",
                    medium: "balance", amount: 500.66, description: "Inheritance", account: a2)
d6 = Deposit.create(id: 547, deposit_type: "deposit", transaction_date: DateTime.iso8601("2015-06-25"), status: "completed",
                    medium: "balance", amount: 10.00, description: "Tax Refund", account: a2)

w1 = Withdraw.create(id: 11111, withdraw_type: "withdraw", transaction_date: DateTime.iso8601("2015-01-01"), status: "completed",
                     medium: "balance", amount: 120.00, description: "Mystery Gifting all of my friends", account: a3)
w2 = Withdraw.create(id: 87, withdraw_type: "withdraw", transaction_date: DateTime.iso8601("2015-12-25"), status: "completed",
                     medium: "balance", amount: 58777888.66, description: "I bought Sealand", account: a1)
w3 = Withdraw.create(id: 4523, withdraw_type: "withdraw", transaction_date: DateTime.iso8601("2016-02-19"), status: "pending",
                     medium: "balance", amount: 2130.69, description: "Needed money to go buy some rare pepes and dank memes", account: a3)

w4 = Withdraw.create(id: 11313, withdraw_type: "withdraw", transaction_date: DateTime.iso8601("2015-08-01"), status: "completed",
                     medium: "balance", amount: 120.00, description: "Mystery Gifting all of my friends", account: a2)
w5 = Withdraw.create(id: 8437, withdraw_type: "withdraw", transaction_date: DateTime.iso8601("2015-05-25"), status: "completed",
                     medium: "balance", amount: 58777888.66, description: "I bought a boat", account: a2)


t1 = Transfer.create(id: 311, transfer_type: "p2p", transaction_date: DateTime.iso8601("2015-11-19"), status: "completed",
                     medium: "balanece", amount: 20.00, description: "Payed off the Senator", payer: a2, payee: a1)
t2 = Transfer.create(id: 312, transfer_type: "p2p", transaction_date: DateTime.iso8601("2015-01-06"), status: "completed",
                     medium: "balance", amount: 75, description: "Nigerian Prince payment", payer: a2, payee: a3)
t3 = Transfer.create(id: 313, transfer_type: "p2p", transaction_date: DateTime.iso8601("2015-04-19"), status: "completed", medium: "balance",
                     amount: 15.00, description: "Drug deal",
                     payer: a2, payee: a3)

t3 = Transfer.create(id: 3143, transfer_type: "p2p", transaction_date: DateTime.iso8601("2015-09-19"), status: "completed", medium: "balance",
                     amount: 15.00, description: "Drug deal",
                     payer: a3, payee: a2)


atm1 = Atm.create(name: "ATM", lat: "39.48", lng: "-87.32", account: a1)
atm2 = Atm.create(name: "ATM", lat: "39.10", lng: "-84.51", account: a1)
atm3 = Atm.create(name: "ATM", lat: "41.89", lng: "-87.64", account: a1)
puts "completed seeding"

def name
  Faker::Name.name
end

def first_name
  Faker::Name.first_name
end

def last_name
  Faker::Name.last_name
end
