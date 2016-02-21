import random
import time

startlat,startlong = 36.1251958,-115.3150833
# 40.1120901,-88.2456117
# 40.1124681,-88.3238087
# 40.0606791,-88.2404697
city = "Las Vegas"
merchants = {"Capital One":"Bank","Chipotle": "Food", "Starbucks": "Food", "McDonalds": "Food", "Walmart": "Retail", "Holiday Inn": "Hotel", "Amazon": "Retail", "Kroger": "Food", "Supercuts": "Services", "AMC Movie Theater": "Retail","Home Depot": "Retail"}
people = ["Fiona Saulters","Melita Charley","Clorinda Juarbe","Bertha Scherr","Effie Daddario","Belia Muldrow","Sueann Philyaw","Sheri Revell","Valery Wieland","Kandy Sandavol","Norine Chatterton","Kathe Dildine","Kiersten Book","Angie Pomerantz","Jamar Swiger","Xiomara Grindle","Max Mccargo","Don Boer","Cammy Montes","Gabriele Resendiz","Keitha Tennant","Mercy Torry","Dalene Duet","Leroy Bausch","Kasha Czerwinski","Christel Nakamura","Theresia Rost","Meagan Morra","Hope Kenna","Tyron Ringer","Anthony Heyer","Lionel Maron","Nubia Fu","Anja Huff","Anisha Dames","Alia Amar","Clotilde Verduzco","Eulalia Huntzinger","Eleanore Dombrosky","Anya Victorino","Alfred Hori","Epifania Hillis","Aracelis Mode","Jannet Deremer","Calista Loera","Shelba Talarico","Hilma Tackett","Arlette Hitchings","Tomi Wickstrom","Jerica Mcnelly"]

purchases = ["RNG description", "hairspray", "workout classes", "Ice Cream", "Spaghetti", "Computer parts", "Misc. Services", "Internet Service", "Bar tab", "Car Repairs", "Cookies", "Redacted", "Red Bull", "Sleep"]
wealthhigh = 1500
wealthlow = 30

merchantIndex = 30
personIndex = 40
purchaseIndex = 140

numMerchants = 6
numberOfPeople = 8
purchasesHigh = 20
purchasesLow = 50

for k in range(merchantIndex, merchantIndex + numMerchants):
	m = random.choice(merchants.keys())
	randlat = startlat + (random.random() -0.5)/7
	randlong = startlong + (random.random() -0.5)/7
	print( '''m{} = Merchant.create(id: {}, name: "{}", category: "{}", street_number: "000", street_name: "Doesn't Even Matter Street", city: "{}", zip: "61801", lat: "{}", lng: "{}")'''
		.format(k, k, m, merchants[m], city, randlat, randlong))

for k in range(personIndex, personIndex + numberOfPeople):
	name = random.choice(people).split(" ")[0]
	print('''c{} = Customer.create(id: {}, first_name: "{}", last_name: "{}", street_number: "0", street_name: "Any street", city: "{}", state: "N/A", zip: "N/A")'''
		.format(k, k, name, random.choice(people).split(" ")[1], city))
	print('''a{} = Account.create(id: {}, account_type: "Credit Card", nickname: "{}'s Credit Card", rewards: 0, balance: 1_000_000.00, customer: c{})'''
		.format(k, k, name, k))

for k in range(purchaseIndex, purchaseIndex + purchasesHigh):
	print('''p{} = Purchase.create(id: {}, purchase_type: "merchant", merchant: m{}, account: a{}, purchase_date: DateTime.iso8601("2016-{}-15"), amount: {}, status: "completed", "medium": "balance", description: "{}")'''
	.format(k, k, random.randrange(merchantIndex, merchantIndex + numMerchants), random.randrange(personIndex, personIndex + numberOfPeople), random.randint(1,12), random.random()*wealthhigh, random.choice(purchases)))

for k in range(purchaseIndex + purchasesHigh, purchaseIndex + purchasesLow):
	print('''p{} = Purchase.create(id: {}, purchase_type: "merchant", merchant: m{}, account: a{}, purchase_date: DateTime.iso8601("2016-{}-15"), amount: {}, status: "completed", "medium": "balance", description: "{}")'''
	.format(k, k, random.randrange(merchantIndex, merchantIndex + numMerchants), random.randrange(personIndex, personIndex + numberOfPeople), random.randint(1,12), random.random()*wealthlow, random.choice(purchases)))
