class AddFavoriteStyleToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :favorite_style, :string
  end
end
