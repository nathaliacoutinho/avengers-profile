class AddImageToAvengers < ActiveRecord::Migration[5.2]
  def change
    add_column :avengers, :image, :string
  end
end
