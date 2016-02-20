# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Merchant.create(first_name: "Andrew", last_name: "Ma", street_number: "5500", street_name: "Wabash Avenue")
Merchant.create(first_name: "Philip", last_name: "Ross", street_number: "284", street_name: "Palo Alto Lane")
Merchant.create(first_name: "Zane", last_name: "Geiger", street_number: "900", street_name: "Germany Boulevard")

Account.create(_id: "123", type: "Credit Card", nickname: "Andrew's Credit Card", rewards: 100, balance: 1000000.00, account_number: "134523", customer_id: "1")
Account.create(_id: "473", type: "Savings", nickname: "Andrew's Savings", rewards: 0, balance: 50.00, account_number: "252533", customer_id: "1")
