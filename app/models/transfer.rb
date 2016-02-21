class Transfer < ActiveRecord::Base
  belongs_to :payer, class_name: 'Account'
  belongs_to :payee , class_name: 'Account'
end
