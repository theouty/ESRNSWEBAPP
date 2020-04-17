class CartTable < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.references :user
      t.references :clothe
      t.timestamps null: false    
    end
  end
end
