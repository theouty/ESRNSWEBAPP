class AddNameToClothes < ActiveRecord::Migration[6.0]
  def change
    add_column :clothes, :name, :string
  end
end
