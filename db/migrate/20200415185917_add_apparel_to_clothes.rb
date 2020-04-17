class AddApparelToClothes < ActiveRecord::Migration[6.0]
  def change
    add_column :clothes, :apparel, :string
  end
end
