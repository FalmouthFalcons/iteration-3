class AddProductToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :product, foreign_key: true
  end
end
