class RemoveTypeFromClothes < ActiveRecord::Migration[6.0]
  def change

    remove_column :clothes, :type, :string
  end
end
