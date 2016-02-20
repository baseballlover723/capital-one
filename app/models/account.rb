class Account < ActiveRecord::Base
  belongs_to :customer
  has_many :bills
end
