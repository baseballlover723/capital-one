m1 = Merchant.create(id: 1, name: "Andrew Ma", category: "Retail", street_number: "5500", street_name: "Wabash Avenue", city: "Terre Haute", zip: "47803", lat: "45.32", lng: "52.12")
m2 = Merchant.create(id: 94, name: "Philip Ross", category: "Sports", street_number: "284", street_name: "Palo Alto Lane", city: "San Jose", zip: "95120", lat: "12.23", lng: "-3.43")
m3 = Merchant.create(id: 5132, name: "Zane Geiger", category: "Music", street_number: "900", street_name: "Germany Boulevard", city: "Berlin", zip: "N/A", lat: "21.31", lng: "40.99")

c1 = Customer.create(id: 5, first_name: "Luke", last_name: "Miller", street_number: "6969", street_name: "ohio street", city: "Dayton", state: "Ohio", zip: "53244")
c2 = Customer.create(id: 693, first_name: "Nathan", last_name: "Blank", street_number: "42", street_name: "donkey", city: "Chicago", state: "Illinios", zip: "65843")
c3 = Customer.create(id: 6092, first_name: "Jeremy", last_name: "Wright", street_number: "52", street_name: "weaboo drive", city: "tokyo", state: "Japan", zip: "N/A")

a1 = Account.create(id: 123, account_type: "Credit Card", nickname: "Luke's Credit Card", rewards: 100.08, balance: 1_000_000.00, customer: c1)
a2 = Account.create(id: 999, account_type: "Savings", nickname: "Luke's Savings", rewards: 0.00, balance: 50.00, customer: c1)
a3 = Account.create(id: 7, account_type: "Checking", nickname: "Jeremy's checking", rewards: 5.14, balance: 56_357.40, customer: c3)

p1 = Purchase.create(id: 1234, purchase_type: "merchant", merchant: m1, account: a3, purchase_date: DateTime.iso8601("2016-02-15"),
                     amount: 524.31, status: "pending", "medium": "balance", description: "Jeremey bought some expensive clothes stuff from Andrew")
p1 = Purchase.create(id: 4231, purchase_type: "merchant", merchant: m2, account: a3, purchase_date: DateTime.iso8601("2015-12-15"),
                     amount: 700_000.00, status: "pending", "medium": "balance", description: "Jeremey bought a league team from Philip")
p1 = Purchase.create(id: 332, purchase_type: "merchant", merchant: m3, account: a1, purchase_date: DateTime.iso8601("2015-07-12"),
                     amount: 76.31, status: "pending", "medium": "balance", description: "Luke bought some reeds from zanes music shop")
p1 = Purchase.create(id: 14, purchase_type: "merchant", merchant: m1, account: a1, purchase_date: DateTime.iso8601("2016-01-15"),
                     amount: 2530.31, status: "declinded", "medium": "balance", description: "Luke got black out drunk and spent all of his retierment fund on expensive clothes from Andrew silk shop")

b1 = Bill.create(id: 15, status: "pending", payee: "Jeremy", nickname: "weaboo tax", creation_date: DateTime.iso8601("1995-07-17"),
                 payment_date: DateTime.iso8601("1995-07-27"), recurring_date: 485, upcoming_payment_date: DateTime.iso8601("2016-02-22"),
                 payment_amount: 58_603.32, account: a3)
b2 = Bill.create(id: 944, status: "overdue", payee: "Luke", nickname: "Luke's unfair government tax", creation_date: DateTime.iso8601("20150525"),
                 payment_date: DateTime.iso8601("2016-01-01"), recurring_date: 15, upcoming_payment_date: DateTime.iso8601("20160217"),
                 payment_amount: 4_458_754.99, account: a2)
b3 = Bill.create(id: 921, status: "not due", payee: "Luke", nickname: "Luke's netflix and chill bill", creation_date: DateTime.iso8601("20131019"),
                 payment_date: DateTime.iso8601("2016-03-19"), recurring_date: 12, upcoming_payment_date: DateTime.iso8601("20160319"),
                 payment_amount: 69.99, account: a1)

d1 = Deposit.create(id: 512, deposit_type: "paycheck", transaction_date: DateTime.iso8601("2016-02-20"), status: "pending",
                    medium: "balence", amount: 84.66, description: "Micky d's paycheck", account: a2)
d2 = Deposit.create(id: 24, deposit_type: "p2p", transaction_date: DateTime.iso8601("2016-01-12"), status: "done",
                    medium: "balence", amount: 500_084.66, description: "Mom died and get me her millions", account: a1)
d3 = Deposit.create(id: 1543, deposit_type: "p2p", transaction_date: DateTime.iso8601("2016-02-25"), status: "planded",
                    medium: "balence", amount: 10.00, description: "found a ten on the ground", account: a1)

w1 = Withdraw.create(id: 1, withdraw_type: "p2p", transaction_date: DateTime.iso8601("2016-01-01"), status: "done",
                     medium: "balence", amount: 120.00, description: "Mystery Gifting all of my friends", account: a3)
w2 = Withdraw.create(id: 87, withdraw_type: "p2p", transaction_date: DateTime.iso8601("2015-12-25"), status: "done",
                     medium: "balence", amount: 58_777_888.66, description: "I bought Sealand", account: a1)
w3 = Withdraw.create(id: 4523, withdraw_type: "p2p", transaction_date: DateTime.iso8601("2016-02-19"), status: "pending",
                     medium: "balence", amount: 2130.69, description: "Needed money to go buy some rare pepes and dank memes", account: a2)

t1 = Transfer.create(id: 31, transfer_type: "p2p", transaction_date: DateTime.iso8601("2015-11-19"), status: "done",
                     medium: "balanece", amount: 420.00, description: "Needed to blaze it real hard", payer: a2, payee: a1)
t2 = Transfer.create(id: 87, transfer_type: "p2p", transaction_date: DateTime.iso8601("2016-01-06"), status: "pending",
                     medium: "balance", amount: 72_933_435.65, description: "shh, no one needs to know where this came from", payer: a2, payee: a3)
t3 = Transfer.create(id: 502, transfer_type: "weeb", transaction_date: DateTime.iso8601("2016-02-19"), status: "pending", medium: "balance",
                     amount: 150.00, description: "Weeaboo leassons from Jeremy, Konnichiha! Hajimemashite, watashi wa desu Kawaii baka. 5/7, would weeaboo again",
                     payer: a1, payee: a3)
puts "done seeding"

