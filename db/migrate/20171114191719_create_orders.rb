class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :payment_type_id

      t.timestamps
    end
  end
end
