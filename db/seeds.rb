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

c1 = Customer.create(id: 1, first_name: "Luke", last_name: "Miller", street_number: "6969", street_name: "ohio street", city: "Dayton", state: "Ohio", zip: "53244")
c2 = Customer.create(id: 2, first_name: "Nathan", last_name: "Blank", street_number: "42", street_name: "donkey", city: "Chicago", state: "Illinios", zip: "65843")
c3 = Customer.create(id: 3, first_name: "Jeremy", last_name: "Wright", street_number: "52", street_name: "weaboo drive", city: "tokyo", state: "Japan", zip: "N/A")


a1 = Account.create(id: 1, account_type: "Credit Card", nickname: "Luke's Credit Card", rewards: 100.08, balance: 1_000_000.00, customer: c1)
a4 = Account.create(id: 2, account_type: "Savings", nickname: "Luke's Savings", rewards: 0.00, balance: 50.00, customer: c1)
a3 = Account.create(id: 3, account_type: "Checking", nickname: "Jeremy's checking", rewards: 5.14, balance: 56_357.40, customer: c3)
a2 = Account.create(id: 4, account_type: "Savings", nickname: "Nathan's Savings", rewards: 0.00, balance: 2430.00, customer: c2) 

p1 = Purchase.create(id: 1234, purchase_type: "merchant", merchant: m1, account: a3, purchase_date: DateTime.iso8601("2016-02-15"), amount: 524.31, status: "pending", "medium": "balance", description: "Jeremey bought some expensive clothes stuff from Andrew")
p2 = Purchase.create(id: 4231, purchase_type: "merchant", merchant: m2, account: a3, purchase_date: DateTime.iso8601("2015-12-15"), amount: 700000.00, status: "pending", "medium": "balance", description: "Jeremey bought a league team from Philip")
p3 = Purchase.create(id: 332, purchase_type: "merchant", merchant: m3, account: a1, purchase_date: DateTime.iso8601("2015-07-12"), amount: 76.31, status: "pending", "medium": "balance", description: "Luke bought some reeds from zanes music shop")
p4 = Purchase.create(id: 8797689, purchase_type: "merchant", merchant: m1, account: a1, purchase_date: DateTime.iso8601("2016-01-15"), amount: 2530.31, status: "declinded", "medium": "balance", description: "Luke got black out drunk and spent all of his retierment fund on expensive clothes from Andrew silk shop")
p5 = Purchase.create(id: 555, purchase_type: "merchant", merchant: m1, account: a2, purchase_date: DateTime.iso8601("2015-01-15"), amount: 24.31, status: "completed", "medium": "balance", description: "Bought burritos")
p6 = Purchase.create(id: 556, purchase_type: "merchant", merchant: m2, account: a2, purchase_date: DateTime.iso8601("2015-02-24"), amount: 9.83, status: "completed", "medium": "balance", description: "Purchased coffee")
p7 = Purchase.create(id: 557, purchase_type: "merchant", merchant: m3, account: a2, purchase_date: DateTime.iso8601("2015-03-02"), amount: 7.91, status: "completed", "medium": "balance", description: "Purchased a Happy Meal")
p8 = Purchase.create(id: 558, purchase_type: "merchant", merchant: m4, account: a2, purchase_date: DateTime.iso8601("2015-04-30"), amount: 56.56, status: "completed", "medium": "balance", description: "Bought groceries")
p9 = Purchase.create(id: 559, purchase_type: "merchant", merchant: m5, account: a2, purchase_date: DateTime.iso8601("2015-05-11"), amount: 126.73, status: "completed", "medium": "balance", description: "Nathan stayed at a hotel for the night")
p10 = Purchase.create(id: 655, purchase_type: "merchant", merchant: m1, account: a2, purchase_date: DateTime.iso8601("2015-06-15"), amount: 12.21, status: "completed", "medium": "balance", description: "Bought burritos")
p11 = Purchase.create(id: 656, purchase_type: "merchant", merchant: m2, account: a2, purchase_date: DateTime.iso8601("2015-07-24"), amount: 19.83, status: "completed", "medium": "balance", description: "Purchased coffee")
p12 = Purchase.create(id: 657, purchase_type: "merchant", merchant: m3, account: a2, purchase_date: DateTime.iso8601("2015-08-02"), amount: 17.91, status: "completed", "medium": "balance", description: "Purchased a Big Mac")
p13 = Purchase.create(id: 658, purchase_type: "merchant", merchant: m4, account: a2, purchase_date: DateTime.iso8601("2015-09-29"), amount: 86.56, status: "completed", "medium": "balance", description: "Bought groceries")
p14 = Purchase.create(id: 659, purchase_type: "merchant", merchant: m5, account: a2, purchase_date: DateTime.iso8601("2015-10-11"), amount: 96.73, status: "completed", "medium": "balance", description: "Nathan stayed at a hotel for the night")
p15 = Purchase.create(id: 755, purchase_type: "merchant", merchant: m1, account: a2, purchase_date: DateTime.iso8601("2015-11-15"), amount: 8.71, status: "completed", "medium": "balance", description: "Bought burritos")
p16 = Purchase.create(id: 756, purchase_type: "merchant", merchant: m2, account: a2, purchase_date: DateTime.iso8601("2015-12-24"), amount: 4.83, status: "completed", "medium": "balance", description: "Purchased coffee")

# Amazon
p17 = Purchase.create(id: 17, purchase_type: "merchant", merchant: m6, account: a1, purchase_date: DateTime.iso8601("2015-04-30"), amount: 1722.3898937001727, status: "completed", "medium": "balance", description: "AMAZON DRONE DELIVERY")
p18 = Purchase.create(id: 18, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-05-11"), amount: 1595.6185574805083, status: "completed", "medium": "balance", description: "AMAZON DRONE DELIVERY")
p19 = Purchase.create(id: 19, purchase_type: "merchant", merchant: m6, account: a3, purchase_date: DateTime.iso8601("2015-06-15"), amount: 318.7563936215583, status: "completed", "medium": "balance", description: "AMAZON DRONE DELIVERY")
p20 = Purchase.create(id: 20, purchase_type: "merchant", merchant: m6, account: a1, purchase_date: DateTime.iso8601("2015-07-24"), amount: 107.98137016179999, status: "completed", "medium": "balance", description: "AMAZON DRONE DELIVERY")
p21 = Purchase.create(id: 21, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-08-02"), amount: 1256.756388863517, status: "completed", "medium": "balance", description: "AMAZON DRONE DELIVERY")
p22 = Purchase.create(id: 22, purchase_type: "merchant", merchant: m6, account: a3, purchase_date: DateTime.iso8601("2015-09-29"), amount: 1944.3640847407657, status: "completed", "medium": "balance", description: "AMAZON DRONE DELIVERY")
p23 = Purchase.create(id: 23, purchase_type: "merchant", merchant: m6, account: a1, purchase_date: DateTime.iso8601("2015-10-11"), amount: 146.54056236396062, status: "completed", "medium": "balance", description: "AMAZON DRONE DELIVERY")
p24 = Purchase.create(id: 24, purchase_type: "merchant", merchant: m6, account: a2, purchase_date: DateTime.iso8601("2015-11-15"), amount: 997.5769136550015, status: "completed", "medium": "balance", description: "AMAZON DRONE DELIVERY")
p25 = Purchase.create(id: 25, purchase_type: "merchant", merchant: m6, account: a3, purchase_date: DateTime.iso8601("2015-12-24"), amount: 1731.0317430666548, status: "completed", "medium": "balance", description: "AMAZON DRONE DELIVERY")

#

p26= Purchase.create(id: 26, purchase_type: "merchant", merchant: m7, account: a3, purchase_date: DateTime.iso8601("2015-04-30"), amount: 139.45862718832709, status: "completed", "medium": "balance", description: "Bought groceries")
p27= Purchase.create(id: 27, purchase_type: "merchant", merchant: m7, account: a3, purchase_date: DateTime.iso8601("2015-05-11"), amount: 56.04739586876561, status: "completed", "medium": "balance", description: "Bought more groceries")
p28 = Purchase.create(id: 28, purchase_type: "merchant", merchant: m7, account: a3, purchase_date: DateTime.iso8601("2015-06-15"), amount: 8.561755557831741, status: "completed", "medium": "balance", description: "Bought even more groceries")
p29 = Purchase.create(id: 29, purchase_type: "merchant", merchant: m8, account: a1, purchase_date: DateTime.iso8601("2015-07-24"), amount: 122.88888363107802, status: "completed", "medium": "balance", description: "Haircut at Supercuts")
p30 = Purchase.create(id: 30, purchase_type: "merchant", merchant: m8, account: a2, purchase_date: DateTime.iso8601("2015-08-02"), amount: 81.40879509033687, status: "completed", "medium": "balance", description: "Haircut at Supercuts")
p31 = Purchase.create(id: 31, purchase_type: "merchant", merchant: m8, account: a3, purchase_date: DateTime.iso8601("2015-09-29"), amount: 71.17280751479944, status: "completed", "medium": "balance", description: "Haircut at Supercuts")
p32 = Purchase.create(id: 32, purchase_type: "merchant", merchant: m8, account: a1, purchase_date: DateTime.iso8601("2015-10-11"), amount: 3.6935679530844867, status: "completed", "medium": "balance", description: "Haircut at Supercuts")
p33 = Purchase.create(id: 33, purchase_type: "merchant", merchant: m8, account: a2, purchase_date: DateTime.iso8601("2015-11-15"), amount: 140.6104359993869, status: "completed", "medium": "balance", description: "Haircut at Supercuts")
p34 = Purchase.create(id: 34, purchase_type: "merchant", merchant: m8, account: a3, purchase_date: DateTime.iso8601("2015-12-24"), amount: 20.780176698810095, status: "completed", "medium": "balance", description: "Haircut at Supercuts")


p35 = Purchase.create(id: 35, purchase_type: "merchant", merchant: m9, account: a1, purchase_date: DateTime.iso8601("2015-04-30"), amount: 118.81730742826653, status: "completed", "medium": "balance", description: "Saw Deadpool")
p36 = Purchase.create(id: 36, purchase_type: "merchant", merchant: m9, account: a2, purchase_date: DateTime.iso8601("2015-05-11"), amount: 164.95174303584733, status: "completed", "medium": "balance", description: "Saw Deadpool")
p37 = Purchase.create(id: 37, purchase_type: "merchant", merchant: m10, account: a2, purchase_date: DateTime.iso8601("2015-06-15"), amount: 6.423931527357407, status: "completed", "medium": "balance", description: "Bought burritos")
p38 = Purchase.create(id: 38, purchase_type: "merchant", merchant: m10, account: a2, purchase_date: DateTime.iso8601("2015-07-24"), amount: 46.04258385472373, status: "completed", "medium": "balance", description: "Purchased coffee")
p39 = Purchase.create(id: 39, purchase_type: "merchant", merchant: m10, account: a2, purchase_date: DateTime.iso8601("2015-08-02"), amount: 101.82834318747737, status: "completed", "medium": "balance", description: "Purchased a Big Mac")
p40 = Purchase.create(id: 40, purchase_type: "merchant", merchant: m10, account: a2, purchase_date: DateTime.iso8601("2015-09-29"), amount: 32.57336801522046, status: "completed", "medium": "balance", description: "Bought groceries")
p41 = Purchase.create(id: 41, purchase_type: "merchant", merchant: m8, account: a2, purchase_date: DateTime.iso8601("2015-10-11"), amount: 91.10409186772495, status: "completed", "medium": "balance", description: "More haircuts")
p42 = Purchase.create(id: 42, purchase_type: "merchant", merchant: m8, account: a2, purchase_date: DateTime.iso8601("2015-11-15"), amount: 180.32897877982893, status: "completed", "medium": "balance", description: "More haircuts")
p43 = Purchase.create(id: 43, purchase_type: "merchant", merchant: m9, account: a3, purchase_date: DateTime.iso8601("2015-12-24"), amount: 24.417213233791244, status: "completed", "medium": "balance", description: "Saw Deadpool")


m12 = Merchant.create(id: 12, name: "Starbucks", category: "Food", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Terre Haute", zip: "61801", lat: "39.5107939272", lng: "-87.4024553678")
m13 = Merchant.create(id: 13, name: "Home Depot", category: "Retail", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Terre Haute", zip: "61801", lat: "39.5318883867", lng: "-87.4421859863")
m14 = Merchant.create(id: 14, name: "Amazon", category: "Retail", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Terre Haute", zip: "61801", lat: "39.5157500833", lng: "-87.4685364938")
m15 = Merchant.create(id: 15, name: "Walmart", category: "Retail", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Terre Haute", zip: "61801", lat: "39.5116076655", lng: "-87.4213754504")
m16 = Merchant.create(id: 16, name: "Chipotle", category: "Food", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Terre Haute", zip: "61801", lat: "39.4552020995", lng: "-87.4097545229")
m17 = Merchant.create(id: 17, name: "Amazon", category: "Retail", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Terre Haute", zip: "61801", lat: "39.4606930119", lng: "-87.4116807815")
c10 = Customer.create(id: 10, first_name: "Kandy", last_name: "Bausch", street_number: "0", street_name: "Any street", city: "Terre Haute", state: "N/A", zip: "N/A")
a10 = Account.create(id: 10, account_type: "Credit Card", nickname: "Kandy's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c10)
c11 = Customer.create(id: 11, first_name: "Christel", last_name: "Talarico", street_number: "0", street_name: "Any street", city: "Terre Haute", state: "N/A", zip: "N/A")
a11 = Account.create(id: 11, account_type: "Credit Card", nickname: "Christel's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c11)
c12 = Customer.create(id: 12, first_name: "Hilma", last_name: "Kenna", street_number: "0", street_name: "Any street", city: "Terre Haute", state: "N/A", zip: "N/A")
a12 = Account.create(id: 12, account_type: "Credit Card", nickname: "Hilma's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c12)
c13 = Customer.create(id: 13, first_name: "Hilma", last_name: "Book", street_number: "0", street_name: "Any street", city: "Terre Haute", state: "N/A", zip: "N/A")
a13 = Account.create(id: 13, account_type: "Credit Card", nickname: "Hilma's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c13)
c14 = Customer.create(id: 14, first_name: "Sueann", last_name: "Tennant", street_number: "0", street_name: "Any street", city: "Terre Haute", state: "N/A", zip: "N/A")
a14 = Account.create(id: 14, account_type: "Credit Card", nickname: "Sueann's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c14)
c15 = Customer.create(id: 15, first_name: "Mercy", last_name: "Tackett", street_number: "0", street_name: "Any street", city: "Terre Haute", state: "N/A", zip: "N/A")
a15 = Account.create(id: 15, account_type: "Credit Card", nickname: "Mercy's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c15)
c16 = Customer.create(id: 16, first_name: "Arlette", last_name: "Resendiz", street_number: "0", street_name: "Any street", city: "Terre Haute", state: "N/A", zip: "N/A")
a16 = Account.create(id: 16, account_type: "Credit Card", nickname: "Arlette's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c16)
c17 = Customer.create(id: 17, first_name: "Eleanore", last_name: "Hitchings", street_number: "0", street_name: "Any street", city: "Terre Haute", state: "N/A", zip: "N/A")
a17 = Account.create(id: 17, account_type: "Credit Card", nickname: "Eleanore's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c17)
p50 = Purchase.create(id: 50, purchase_type: "merchant", merchant: m12, account: a15, purchase_date: DateTime.iso8601("2016-05-15"), amount: 71.3662567612, status: "completed", "medium": "balance", description: "Internet Service")
p51 = Purchase.create(id: 51, purchase_type: "merchant", merchant: m16, account: a14, purchase_date: DateTime.iso8601("2016-07-15"), amount: 85.3222865371, status: "completed", "medium": "balance", description: "Bar tab")
p52 = Purchase.create(id: 52, purchase_type: "merchant", merchant: m13, account: a12, purchase_date: DateTime.iso8601("2016-09-15"), amount: 70.4363412427, status: "completed", "medium": "balance", description: "Misc. Services")
p53 = Purchase.create(id: 53, purchase_type: "merchant", merchant: m13, account: a12, purchase_date: DateTime.iso8601("2016-01-15"), amount: 67.8665415157, status: "completed", "medium": "balance", description: "Internet Service")
p54 = Purchase.create(id: 54, purchase_type: "merchant", merchant: m12, account: a12, purchase_date: DateTime.iso8601("2016-02-15"), amount: 93.8791682672, status: "completed", "medium": "balance", description: "workout classes")
p55 = Purchase.create(id: 55, purchase_type: "merchant", merchant: m17, account: a10, purchase_date: DateTime.iso8601("2016-02-15"), amount: 95.4046842805, status: "completed", "medium": "balance", description: "Bar tab")
p56 = Purchase.create(id: 56, purchase_type: "merchant", merchant: m16, account: a12, purchase_date: DateTime.iso8601("2016-05-15"), amount: 97.652123717, status: "completed", "medium": "balance", description: "Spaghetti")
p57 = Purchase.create(id: 57, purchase_type: "merchant", merchant: m16, account: a16, purchase_date: DateTime.iso8601("2016-04-15"), amount: 92.042125192, status: "completed", "medium": "balance", description: "Computer parts")
p58 = Purchase.create(id: 58, purchase_type: "merchant", merchant: m15, account: a14, purchase_date: DateTime.iso8601("2016-08-15"), amount: 72.1650888187, status: "completed", "medium": "balance", description: "Ice Cream")
p59 = Purchase.create(id: 59, purchase_type: "merchant", merchant: m12, account: a12, purchase_date: DateTime.iso8601("2016-08-15"), amount: 25.8812954549, status: "completed", "medium": "balance", description: "Bar tab")
p60 = Purchase.create(id: 60, purchase_type: "merchant", merchant: m14, account: a14, purchase_date: DateTime.iso8601("2016-08-15"), amount: 31.6140829645, status: "completed", "medium": "balance", description: "Ice Cream")
p61 = Purchase.create(id: 61, purchase_type: "merchant", merchant: m13, account: a10, purchase_date: DateTime.iso8601("2016-05-15"), amount: 84.7960128441, status: "completed", "medium": "balance", description: "Red Bull")
p62 = Purchase.create(id: 62, purchase_type: "merchant", merchant: m12, account: a17, purchase_date: DateTime.iso8601("2016-09-15"), amount: 13.2389369114, status: "completed", "medium": "balance", description: "Sleep")
p63 = Purchase.create(id: 63, purchase_type: "merchant", merchant: m17, account: a16, purchase_date: DateTime.iso8601("2016-07-15"), amount: 43.0234255462, status: "completed", "medium": "balance", description: "Redacted")
p64 = Purchase.create(id: 64, purchase_type: "merchant", merchant: m14, account: a11, purchase_date: DateTime.iso8601("2016-04-15"), amount: 59.3975523303, status: "completed", "medium": "balance", description: "Ice Cream")
p65 = Purchase.create(id: 65, purchase_type: "merchant", merchant: m14, account: a14, purchase_date: DateTime.iso8601("2016-12-15"), amount: 92.3729495087, status: "completed", "medium": "balance", description: "workout classes")
p66 = Purchase.create(id: 66, purchase_type: "merchant", merchant: m16, account: a13, purchase_date: DateTime.iso8601("2016-05-15"), amount: 73.7809678465, status: "completed", "medium": "balance", description: "Computer parts")
p67 = Purchase.create(id: 67, purchase_type: "merchant", merchant: m15, account: a12, purchase_date: DateTime.iso8601("2016-02-15"), amount: 30.041306428, status: "completed", "medium": "balance", description: "Cookies")
p68 = Purchase.create(id: 68, purchase_type: "merchant", merchant: m17, account: a17, purchase_date: DateTime.iso8601("2016-11-15"), amount: 88.2905241906, status: "completed", "medium": "balance", description: "Cookies")
p69 = Purchase.create(id: 69, purchase_type: "merchant", merchant: m12, account: a16, purchase_date: DateTime.iso8601("2016-02-15"), amount: 31.5681692915, status: "completed", "medium": "balance", description: "Car Repairs")


m20 = Merchant.create(id: 20, name: "Supercuts", category: "Services", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Seattle", zip: "61801", lat: "47.6286494695", lng: "-122.540462803")
m21 = Merchant.create(id: 21, name: "McDonalds", category: "Food", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Seattle", zip: "61801", lat: "47.6003709605", lng: "-122.434010589")
m22 = Merchant.create(id: 22, name: "Capital One", category: "Bank", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Seattle", zip: "61801", lat: "47.5633769323", lng: "-122.462557874")
m23 = Merchant.create(id: 23, name: "Capital One", category: "Bank", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Seattle", zip: "61801", lat: "47.6167315238", lng: "-122.410783568")
m24 = Merchant.create(id: 24, name: "AMC Movie Theater", category: "Retail", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Seattle", zip: "61801", lat: "47.5863690422", lng: "-122.527225799")
m25 = Merchant.create(id: 25, name: "Kroger", category: "Food", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Seattle", zip: "61801", lat: "47.6579932708", lng: "-122.440059029")
c20 = Customer.create(id: 20, first_name: "Fiona", last_name: "Talarico", street_number: "0", street_name: "Any street", city: "Seattle", state: "N/A", zip: "N/A")
a20 = Account.create(id: 20, account_type: "Credit Card", nickname: "Fiona's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c20)
c21 = Customer.create(id: 21, first_name: "Alfred", last_name: "Victorino", street_number: "0", street_name: "Any street", city: "Seattle", state: "N/A", zip: "N/A")
a21 = Account.create(id: 21, account_type: "Credit Card", nickname: "Alfred's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c21)
c22 = Customer.create(id: 22, first_name: "Hope", last_name: "Boer", street_number: "0", street_name: "Any street", city: "Seattle", state: "N/A", zip: "N/A")
a22 = Account.create(id: 22, account_type: "Credit Card", nickname: "Hope's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c22)
c23 = Customer.create(id: 23, first_name: "Jannet", last_name: "Tackett", street_number: "0", street_name: "Any street", city: "Seattle", state: "N/A", zip: "N/A")
a23 = Account.create(id: 23, account_type: "Credit Card", nickname: "Jannet's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c23)
c24 = Customer.create(id: 24, first_name: "Valery", last_name: "Sandavol", street_number: "0", street_name: "Any street", city: "Seattle", state: "N/A", zip: "N/A")
a24 = Account.create(id: 24, account_type: "Credit Card", nickname: "Valery's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c24)
c25 = Customer.create(id: 25, first_name: "Kiersten", last_name: "Amar", street_number: "0", street_name: "Any street", city: "Seattle", state: "N/A", zip: "N/A")
a25 = Account.create(id: 25, account_type: "Credit Card", nickname: "Kiersten's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c25)
c26 = Customer.create(id: 26, first_name: "Valery", last_name: "Torry", street_number: "0", street_name: "Any street", city: "Seattle", state: "N/A", zip: "N/A")
a26 = Account.create(id: 26, account_type: "Credit Card", nickname: "Valery's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c26)
c27 = Customer.create(id: 27, first_name: "Effie", last_name: "Nakamura", street_number: "0", street_name: "Any street", city: "Seattle", state: "N/A", zip: "N/A")
a27 = Account.create(id: 27, account_type: "Credit Card", nickname: "Effie's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c27)
p80 = Purchase.create(id: 80, purchase_type: "merchant", merchant: m22, account: a24, purchase_date: DateTime.iso8601("2016-08-15"), amount: 2948.39010347, status: "completed", "medium": "balance", description: "Internet Service")
p81 = Purchase.create(id: 81, purchase_type: "merchant", merchant: m25, account: a23, purchase_date: DateTime.iso8601("2016-12-15"), amount: 216.019721514, status: "completed", "medium": "balance", description: "workout classes")
p82 = Purchase.create(id: 82, purchase_type: "merchant", merchant: m25, account: a27, purchase_date: DateTime.iso8601("2016-08-15"), amount: 1449.53364931, status: "completed", "medium": "balance", description: "Computer parts")
p83 = Purchase.create(id: 83, purchase_type: "merchant", merchant: m20, account: a21, purchase_date: DateTime.iso8601("2016-04-15"), amount: 348.209099849, status: "completed", "medium": "balance", description: "Misc. Services")
p84 = Purchase.create(id: 84, purchase_type: "merchant", merchant: m21, account: a27, purchase_date: DateTime.iso8601("2016-09-15"), amount: 1663.45211, status: "completed", "medium": "balance", description: "Bar tab")
p85 = Purchase.create(id: 85, purchase_type: "merchant", merchant: m23, account: a24, purchase_date: DateTime.iso8601("2016-02-15"), amount: 2411.02948378, status: "completed", "medium": "balance", description: "Cookies")
p86 = Purchase.create(id: 86, purchase_type: "merchant", merchant: m25, account: a22, purchase_date: DateTime.iso8601("2016-02-15"), amount: 636.567271967, status: "completed", "medium": "balance", description: "Computer parts")
p87 = Purchase.create(id: 87, purchase_type: "merchant", merchant: m20, account: a25, purchase_date: DateTime.iso8601("2016-04-15"), amount: 249.32115045, status: "completed", "medium": "balance", description: "Redacted")
p88 = Purchase.create(id: 88, purchase_type: "merchant", merchant: m20, account: a26, purchase_date: DateTime.iso8601("2016-01-15"), amount: 543.291746283, status: "completed", "medium": "balance", description: "hairspray")
p89 = Purchase.create(id: 89, purchase_type: "merchant", merchant: m20, account: a25, purchase_date: DateTime.iso8601("2016-11-15"), amount: 2109.43793404, status: "completed", "medium": "balance", description: "Car Repairs")
p90 = Purchase.create(id: 90, purchase_type: "merchant", merchant: m24, account: a26, purchase_date: DateTime.iso8601("2016-11-15"), amount: 680.267918821, status: "completed", "medium": "balance", description: "Ice Cream")
p91 = Purchase.create(id: 91, purchase_type: "merchant", merchant: m20, account: a21, purchase_date: DateTime.iso8601("2016-09-15"), amount: 659.630281936, status: "completed", "medium": "balance", description: "Car Repairs")
p92 = Purchase.create(id: 92, purchase_type: "merchant", merchant: m23, account: a21, purchase_date: DateTime.iso8601("2016-03-15"), amount: 1020.25137294, status: "completed", "medium": "balance", description: "Bar tab")
p93 = Purchase.create(id: 93, purchase_type: "merchant", merchant: m23, account: a20, purchase_date: DateTime.iso8601("2016-02-15"), amount: 1836.25352479, status: "completed", "medium": "balance", description: "Bar tab")
p94 = Purchase.create(id: 94, purchase_type: "merchant", merchant: m25, account: a22, purchase_date: DateTime.iso8601("2016-11-15"), amount: 2115.76851393, status: "completed", "medium": "balance", description: "RNG description")
p95 = Purchase.create(id: 95, purchase_type: "merchant", merchant: m24, account: a22, purchase_date: DateTime.iso8601("2016-10-15"), amount: 1320.0143744, status: "completed", "medium": "balance", description: "Red Bull")
p96 = Purchase.create(id: 96, purchase_type: "merchant", merchant: m20, account: a23, purchase_date: DateTime.iso8601("2016-06-15"), amount: 2216.10717819, status: "completed", "medium": "balance", description: "Sleep")
p97 = Purchase.create(id: 97, purchase_type: "merchant", merchant: m22, account: a24, purchase_date: DateTime.iso8601("2016-08-15"), amount: 1039.04294321, status: "completed", "medium": "balance", description: "Internet Service")
p98 = Purchase.create(id: 98, purchase_type: "merchant", merchant: m22, account: a22, purchase_date: DateTime.iso8601("2016-11-15"), amount: 395.243161023, status: "completed", "medium": "balance", description: "Misc. Services")
p99 = Purchase.create(id: 99, purchase_type: "merchant", merchant: m24, account: a20, purchase_date: DateTime.iso8601("2016-03-15"), amount: 108.893140292, status: "completed", "medium": "balance", description: "Red Bull")

m30 = Merchant.create(id: 30, name: "Starbucks", category: "Food", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Las Vegas", zip: "61801", lat: "36.1413960461", lng: "-115.324812931")
m31 = Merchant.create(id: 31, name: "Amazon", category: "Retail", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Las Vegas", zip: "61801", lat: "36.1006576921", lng: "-115.30518889")
m32 = Merchant.create(id: 32, name: "Holiday Inn", category: "Hotel", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Las Vegas", zip: "61801", lat: "36.1240596568", lng: "-115.333319704")
m33 = Merchant.create(id: 33, name: "McDonalds", category: "Food", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Las Vegas", zip: "61801", lat: "36.1018046237", lng: "-115.340079479")
m34 = Merchant.create(id: 34, name: "Home Depot", category: "Retail", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Las Vegas", zip: "61801", lat: "36.1170355156", lng: "-115.350784265")
m35 = Merchant.create(id: 35, name: "Chipotle", category: "Food", street_number: "000", street_name: "Doesn't Even Matter Street", city: "Las Vegas", zip: "61801", lat: "36.1552938659", lng: "-115.366826026")
c40 = Customer.create(id: 40, first_name: "Jamar", last_name: "Mccargo", street_number: "0", street_name: "Any street", city: "Las Vegas", state: "N/A", zip: "N/A")
a40 = Account.create(id: 40, account_type: "Credit Card", nickname: "Jamar's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c40)
c41 = Customer.create(id: 41, first_name: "Alfred", last_name: "Heyer", street_number: "0", street_name: "Any street", city: "Las Vegas", state: "N/A", zip: "N/A")
a41 = Account.create(id: 41, account_type: "Credit Card", nickname: "Alfred's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c41)
c42 = Customer.create(id: 42, first_name: "Sueann", last_name: "Bausch", street_number: "0", street_name: "Any street", city: "Las Vegas", state: "N/A", zip: "N/A")
a42 = Account.create(id: 42, account_type: "Credit Card", nickname: "Sueann's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c42)
c43 = Customer.create(id: 43, first_name: "Alia", last_name: "Kenna", street_number: "0", street_name: "Any street", city: "Las Vegas", state: "N/A", zip: "N/A")
a43 = Account.create(id: 43, account_type: "Credit Card", nickname: "Alia's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c43)
c44 = Customer.create(id: 44, first_name: "Hilma", last_name: "Mcnelly", street_number: "0", street_name: "Any street", city: "Las Vegas", state: "N/A", zip: "N/A")
a44 = Account.create(id: 44, account_type: "Credit Card", nickname: "Hilma's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c44)
c45 = Customer.create(id: 45, first_name: "Mercy", last_name: "Verduzco", street_number: "0", street_name: "Any street", city: "Las Vegas", state: "N/A", zip: "N/A")
a45 = Account.create(id: 45, account_type: "Credit Card", nickname: "Mercy's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c45)
c46 = Customer.create(id: 46, first_name: "Hilma", last_name: "Grindle", street_number: "0", street_name: "Any street", city: "Las Vegas", state: "N/A", zip: "N/A")
a46 = Account.create(id: 46, account_type: "Credit Card", nickname: "Hilma's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c46)
c47 = Customer.create(id: 47, first_name: "Kiersten", last_name: "Tennant", street_number: "0", street_name: "Any street", city: "Las Vegas", state: "N/A", zip: "N/A")
a47 = Account.create(id: 47, account_type: "Credit Card", nickname: "Kiersten's Credit Card", rewards: 0, balance: 1_000_000.00, customer: c47)
p140 = Purchase.create(id: 140, purchase_type: "merchant", merchant: m34, account: a46, purchase_date: DateTime.iso8601("2016-07-15"), amount: 429.291017603, status: "completed", "medium": "balance", description: "Red Bull")
p141 = Purchase.create(id: 141, purchase_type: "merchant", merchant: m35, account: a44, purchase_date: DateTime.iso8601("2016-05-15"), amount: 770.406804157, status: "completed", "medium": "balance", description: "workout classes")
p142 = Purchase.create(id: 142, purchase_type: "merchant", merchant: m33, account: a45, purchase_date: DateTime.iso8601("2016-06-15"), amount: 1164.72461492, status: "completed", "medium": "balance", description: "RNG description")
p143 = Purchase.create(id: 143, purchase_type: "merchant", merchant: m32, account: a46, purchase_date: DateTime.iso8601("2016-09-15"), amount: 637.698278357, status: "completed", "medium": "balance", description: "Misc. Services")
p144 = Purchase.create(id: 144, purchase_type: "merchant", merchant: m31, account: a40, purchase_date: DateTime.iso8601("2016-04-15"), amount: 1030.74257966, status: "completed", "medium": "balance", description: "Internet Service")
p145 = Purchase.create(id: 145, purchase_type: "merchant", merchant: m34, account: a45, purchase_date: DateTime.iso8601("2016-07-15"), amount: 252.735972885, status: "completed", "medium": "balance", description: "Red Bull")
p146 = Purchase.create(id: 146, purchase_type: "merchant", merchant: m34, account: a47, purchase_date: DateTime.iso8601("2016-02-15"), amount: 957.242450168, status: "completed", "medium": "balance", description: "Red Bull")
p147 = Purchase.create(id: 147, purchase_type: "merchant", merchant: m30, account: a47, purchase_date: DateTime.iso8601("2016-06-15"), amount: 422.033314923, status: "completed", "medium": "balance", description: "hairspray")
p148 = Purchase.create(id: 148, purchase_type: "merchant", merchant: m32, account: a47, purchase_date: DateTime.iso8601("2016-03-15"), amount: 355.19837081, status: "completed", "medium": "balance", description: "hairspray")
p149 = Purchase.create(id: 149, purchase_type: "merchant", merchant: m34, account: a46, purchase_date: DateTime.iso8601("2016-02-15"), amount: 227.455268402, status: "completed", "medium": "balance", description: "Ice Cream")
p150 = Purchase.create(id: 150, purchase_type: "merchant", merchant: m34, account: a47, purchase_date: DateTime.iso8601("2016-02-15"), amount: 1159.56907727, status: "completed", "medium": "balance", description: "Car Repairs")
p151 = Purchase.create(id: 151, purchase_type: "merchant", merchant: m31, account: a46, purchase_date: DateTime.iso8601("2016-08-15"), amount: 1097.7269313, status: "completed", "medium": "balance", description: "hairspray")
p152 = Purchase.create(id: 152, purchase_type: "merchant", merchant: m34, account: a41, purchase_date: DateTime.iso8601("2016-08-15"), amount: 817.58092897, status: "completed", "medium": "balance", description: "Bar tab")
p153 = Purchase.create(id: 153, purchase_type: "merchant", merchant: m30, account: a46, purchase_date: DateTime.iso8601("2016-09-15"), amount: 490.303679193, status: "completed", "medium": "balance", description: "Internet Service")
p154 = Purchase.create(id: 154, purchase_type: "merchant", merchant: m34, account: a46, purchase_date: DateTime.iso8601("2016-08-15"), amount: 910.360114354, status: "completed", "medium": "balance", description: "hairspray")
p155 = Purchase.create(id: 155, purchase_type: "merchant", merchant: m30, account: a44, purchase_date: DateTime.iso8601("2016-12-15"), amount: 701.103389398, status: "completed", "medium": "balance", description: "RNG description")
p156 = Purchase.create(id: 156, purchase_type: "merchant", merchant: m33, account: a46, purchase_date: DateTime.iso8601("2016-02-15"), amount: 590.653201122, status: "completed", "medium": "balance", description: "Spaghetti")
p157 = Purchase.create(id: 157, purchase_type: "merchant", merchant: m30, account: a46, purchase_date: DateTime.iso8601("2016-06-15"), amount: 1198.77689384, status: "completed", "medium": "balance", description: "workout classes")
p158 = Purchase.create(id: 158, purchase_type: "merchant", merchant: m34, account: a44, purchase_date: DateTime.iso8601("2016-02-15"), amount: 27.8510723187, status: "completed", "medium": "balance", description: "hairspray")
p159 = Purchase.create(id: 159, purchase_type: "merchant", merchant: m35, account: a43, purchase_date: DateTime.iso8601("2016-08-15"), amount: 1327.68132304, status: "completed", "medium": "balance", description: "Red Bull")
p160 = Purchase.create(id: 160, purchase_type: "merchant", merchant: m30, account: a45, purchase_date: DateTime.iso8601("2016-11-15"), amount: 10.0595034252, status: "completed", "medium": "balance", description: "Sleep")
p161 = Purchase.create(id: 161, purchase_type: "merchant", merchant: m35, account: a44, purchase_date: DateTime.iso8601("2016-07-15"), amount: 1.03775500923, status: "completed", "medium": "balance", description: "Sleep")
p162 = Purchase.create(id: 162, purchase_type: "merchant", merchant: m35, account: a47, purchase_date: DateTime.iso8601("2016-07-15"), amount: 1.25197702138, status: "completed", "medium": "balance", description: "hairspray")
p163 = Purchase.create(id: 163, purchase_type: "merchant", merchant: m32, account: a40, purchase_date: DateTime.iso8601("2016-12-15"), amount: 8.97871700463, status: "completed", "medium": "balance", description: "workout classes")
p164 = Purchase.create(id: 164, purchase_type: "merchant", merchant: m30, account: a45, purchase_date: DateTime.iso8601("2016-10-15"), amount: 9.68907694712, status: "completed", "medium": "balance", description: "Misc. Services")
p165 = Purchase.create(id: 165, purchase_type: "merchant", merchant: m31, account: a41, purchase_date: DateTime.iso8601("2016-09-15"), amount: 3.3639350171, status: "completed", "medium": "balance", description: "Computer parts")
p166 = Purchase.create(id: 166, purchase_type: "merchant", merchant: m30, account: a42, purchase_date: DateTime.iso8601("2016-01-15"), amount: 27.363925358, status: "completed", "medium": "balance", description: "Spaghetti")
p167 = Purchase.create(id: 167, purchase_type: "merchant", merchant: m35, account: a42, purchase_date: DateTime.iso8601("2016-10-15"), amount: 19.3924587241, status: "completed", "medium": "balance", description: "Misc. Services")
p168 = Purchase.create(id: 168, purchase_type: "merchant", merchant: m35, account: a45, purchase_date: DateTime.iso8601("2016-06-15"), amount: 27.7477232651, status: "completed", "medium": "balance", description: "Ice Cream")
p169 = Purchase.create(id: 169, purchase_type: "merchant", merchant: m34, account: a41, purchase_date: DateTime.iso8601("2016-08-15"), amount: 22.1041169968, status: "completed", "medium": "balance", description: "Red Bull")
p170 = Purchase.create(id: 170, purchase_type: "merchant", merchant: m31, account: a47, purchase_date: DateTime.iso8601("2016-02-15"), amount: 29.6490492598, status: "completed", "medium": "balance", description: "Internet Service")
p171 = Purchase.create(id: 171, purchase_type: "merchant", merchant: m34, account: a47, purchase_date: DateTime.iso8601("2016-07-15"), amount: 11.1281697082, status: "completed", "medium": "balance", description: "hairspray")
p172 = Purchase.create(id: 172, purchase_type: "merchant", merchant: m33, account: a43, purchase_date: DateTime.iso8601("2016-08-15"), amount: 22.4918440845, status: "completed", "medium": "balance", description: "Internet Service")
p173 = Purchase.create(id: 173, purchase_type: "merchant", merchant: m34, account: a46, purchase_date: DateTime.iso8601("2016-06-15"), amount: 17.3858697529, status: "completed", "medium": "balance", description: "Misc. Services")
p174 = Purchase.create(id: 174, purchase_type: "merchant", merchant: m30, account: a47, purchase_date: DateTime.iso8601("2016-10-15"), amount: 6.92864716793, status: "completed", "medium": "balance", description: "Cookies")
p175 = Purchase.create(id: 175, purchase_type: "merchant", merchant: m34, account: a40, purchase_date: DateTime.iso8601("2016-12-15"), amount: 9.49003196655, status: "completed", "medium": "balance", description: "Redacted")
p176 = Purchase.create(id: 176, purchase_type: "merchant", merchant: m33, account: a40, purchase_date: DateTime.iso8601("2016-04-15"), amount: 20.1634344995, status: "completed", "medium": "balance", description: "Computer parts")
p177 = Purchase.create(id: 177, purchase_type: "merchant", merchant: m32, account: a44, purchase_date: DateTime.iso8601("2016-02-15"), amount: 1.77832162424, status: "completed", "medium": "balance", description: "Car Repairs")
p178 = Purchase.create(id: 178, purchase_type: "merchant", merchant: m32, account: a40, purchase_date: DateTime.iso8601("2016-05-15"), amount: 29.6302837062, status: "completed", "medium": "balance", description: "Internet Service")
p179 = Purchase.create(id: 179, purchase_type: "merchant", merchant: m30, account: a47, purchase_date: DateTime.iso8601("2016-05-15"), amount: 11.0916977773, status: "completed", "medium": "balance", description: "Redacted")
p180 = Purchase.create(id: 180, purchase_type: "merchant", merchant: m30, account: a40, purchase_date: DateTime.iso8601("2016-02-15"), amount: 9.52198352388, status: "completed", "medium": "balance", description: "Ice Cream")
p181 = Purchase.create(id: 181, purchase_type: "merchant", merchant: m32, account: a47, purchase_date: DateTime.iso8601("2016-07-15"), amount: 8.39298014201, status: "completed", "medium": "balance", description: "Ice Cream")
p182 = Purchase.create(id: 182, purchase_type: "merchant", merchant: m33, account: a41, purchase_date: DateTime.iso8601("2016-12-15"), amount: 2.09358669805, status: "completed", "medium": "balance", description: "Sleep")
p183 = Purchase.create(id: 183, purchase_type: "merchant", merchant: m30, account: a44, purchase_date: DateTime.iso8601("2016-01-15"), amount: 21.9924601344, status: "completed", "medium": "balance", description: "hairspray")
p184 = Purchase.create(id: 184, purchase_type: "merchant", merchant: m30, account: a42, purchase_date: DateTime.iso8601("2016-04-15"), amount: 1.90470918586, status: "completed", "medium": "balance", description: "Sleep")
p185 = Purchase.create(id: 185, purchase_type: "merchant", merchant: m32, account: a43, purchase_date: DateTime.iso8601("2016-09-15"), amount: 19.7163419028, status: "completed", "medium": "balance", description: "Sleep")
p186 = Purchase.create(id: 186, purchase_type: "merchant", merchant: m32, account: a40, purchase_date: DateTime.iso8601("2016-10-15"), amount: 25.9788203602, status: "completed", "medium": "balance", description: "hairspray")
p187 = Purchase.create(id: 187, purchase_type: "merchant", merchant: m33, account: a42, purchase_date: DateTime.iso8601("2016-04-15"), amount: 10.855470375, status: "completed", "medium": "balance", description: "RNG description")
p188 = Purchase.create(id: 188, purchase_type: "merchant", merchant: m30, account: a43, purchase_date: DateTime.iso8601("2016-08-15"), amount: 23.9051697796, status: "completed", "medium": "balance", description: "Computer parts")
p189 = Purchase.create(id: 189, purchase_type: "merchant", merchant: m31, account: a43, purchase_date: DateTime.iso8601("2016-11-15"), amount: 4.15150994735, status: "completed", "medium": "balance", description: "Sleep")

















b1 = Bill.create(id: 15, status: "completed", payee: "Jeremy", nickname: "weaboo tax", creation_date: DateTime.iso8601("1995-07-17"),
                 payment_date: DateTime.iso8601("1995-07-27"), recurring_date: 485, upcoming_payment_date: DateTime.iso8601("2016-02-22"),
                 payment_amount: 53.32, account: a3)
b2 = Bill.create(id: 944, status: "completed", payee: "Luke", nickname: "Luke's unfair government tax", creation_date: DateTime.iso8601("20150525"),
                 payment_date: DateTime.iso8601("2016-01-01"), recurring_date: 15, upcoming_payment_date: DateTime.iso8601("20160217"),
                 payment_amount: 44.99, account: a2)
b3 = Bill.create(id: 921, status: "completed", payee: "Luke", nickname: "Luke's netflix and chill bill", creation_date: DateTime.iso8601("20131019"),
                 payment_date: DateTime.iso8601("2016-03-19"), recurring_date: 12, upcoming_payment_date: DateTime.iso8601("20160319"),
                 payment_amount: 69.99, account: a1)

b4 = Bill.create(id: 2, status: "completed", payee: "Comcast", nickname: "Nathan didn't pay the government", creation_date: DateTime.iso8601("2015-05-25"),
                 payment_date: DateTime.iso8601("2015-05-26"), recurring_date: 15, upcoming_payment_date: DateTime.iso8601("2015-10-17"),
                 payment_amount: 108.99, account: a2)
b5 = Bill.create(id: 3, status: "completed", payee: "Trunk Club", nickname: "Nathan owed money", creation_date: DateTime.iso8601("2015-10-17"),
                 payment_date: DateTime.iso8601("2015-10-18"), recurring_date: 12, upcoming_payment_date: DateTime.iso8601("2016-03-19"),
                 payment_amount: 69.99, account: a2)


d1 = Deposit.create(id: 512, deposit_type: "deposit", transaction_date: DateTime.iso8601("2015-02-20"), status: "completed",
                    medium: "balance", amount: 84.66, description: "Micky d's paycheck", account: a3)

d2 = Deposit.create(id: 24, deposit_type: "deposit", transaction_date: DateTime.iso8601("2016-01-12"), status: "completed",
                    medium: "balance", amount: 54.66, description: "Mom died and get me her millions", account: a1)
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
                     medium: "balance", amount: 598.66, description: "I bought Sealand", account: a1)
w3 = Withdraw.create(id: 4523, withdraw_type: "withdraw", transaction_date: DateTime.iso8601("2016-02-19"), status: "pending",
                     medium: "balance", amount: 210.69, description: "Needed money to go buy some rare pepes and dank memes", account: a3)

w4 = Withdraw.create(id: 11313, withdraw_type: "withdraw", transaction_date: DateTime.iso8601("2015-08-01"), status: "completed",
                     medium: "balance", amount: 120.00, description: "Mystery Gifting all of my friends", account: a2)
w5 = Withdraw.create(id: 8437, withdraw_type: "withdraw", transaction_date: DateTime.iso8601("2015-05-25"), status: "completed",
                     medium: "balance", amount: 588.66, description: "I bought a boat", account: a2)


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
