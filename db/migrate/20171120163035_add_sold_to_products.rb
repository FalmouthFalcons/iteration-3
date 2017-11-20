class AddSoldToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :sold, :integer
  end
end
