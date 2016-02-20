m1 = Merchant.create(id: 1, name: "Andrew Ma", category: "Retail", street_number: "5500", street_name: "Wabash Avenue", city: "Terre Haute", zip: "47803", lat: "45.32", lng: "52.12")
m2 = Merchant.create(id: 94, name: "Philip Ross", category: "Sports", street_number: "284", street_name: "Palo Alto Lane", city: "San Jose", zip: "95120", lat: "12.23", lng: "-3.43")
m3 = Merchant.create(id: 5132, name: "Zane Geiger", category: "Music", street_number: "900", street_name: "Germany Boulevard", city: "Berlin", zip: "N/A", lat: "21.31", lng: "40.99")

c1 = Customer.create(id: 5, first_name: "Luke", last_name: "Miller", street_number: "6969", street_name: "ohio street", city: "Dayton", state: "Ohio", zip: "53244")
c2 = Customer.create(id: 693, first_name: "Nathan", last_name: "Blank", street_number: "42", street_name: "donkey", city: "Chicago", state: "Illinios", zip: "65843")
c3 = Customer.create(id: 6092, first_name: "Jeremy", last_name: "Wright", street_number: "52", street_name: "??? ?? ???", city: "??", state: "???", zip: "N/A")

a1 = Account.create(id: 123, account_type: "Credit Card", nickname: "Luke's Credit Card", rewards: 100.08, balance: 1_000_000.00, customer: c1)
a2 = Account.create(id: 999, account_type: "Savings", nickname: "Luke's Savings", rewards: 0.00, balance: 50.00, customer: c1)
a3 = Account.create(id: 7, account_type: "Checking", nickname: "Jeremy's checking", rewards: 5.14, balance: 56_357.40,customer: c3)

puts "done seeding"

