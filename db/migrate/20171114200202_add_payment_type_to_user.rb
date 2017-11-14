class AddPaymentTypeToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :payment_type, foreign_key: true
  end
end
