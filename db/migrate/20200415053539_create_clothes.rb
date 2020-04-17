class CreateClothes < ActiveRecord::Migration[6.0]
  def change
    create_table :clothes do |t|
      t.string :type
      t.string :style
      t.string :price

      t.timestamps
    end
  end
end
