class CreateAvengers < ActiveRecord::Migration[5.2]
  def change
    create_table :avengers do |t|
      t.string :name
      t.text :strength
      t.text :weakness
      t.string :known_as

      t.timestamps
    end
  end
end
