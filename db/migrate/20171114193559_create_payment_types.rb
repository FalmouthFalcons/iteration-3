class CreatePaymentTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_types do |t|
      t.string :payment_type
      t.integer :account_number
      t.integer :customer_id

      t.timestamps
    end
  end
end
