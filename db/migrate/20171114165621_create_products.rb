class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :category
      t.string :type
      t.float :price
      t.boolean :delivery
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
