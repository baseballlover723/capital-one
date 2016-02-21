class Account < ActiveRecord::Base
  belongs_to :customer
  has_many :bills
  has_many :deposits
  has_many :purchases
  has_many :transfers, foreign_key: 'payer_id'
  has_many :transfers, foreign_key: 'payee_id'
  has_many :withdraws
  has_many :atms
end
