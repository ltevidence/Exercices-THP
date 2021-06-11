class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.integer :price
      t.text :description
      t.text :welcome_message
      t.boolean :has_wifi
      t.integer :available_beds

      t.timestamps
    end
  end
end
