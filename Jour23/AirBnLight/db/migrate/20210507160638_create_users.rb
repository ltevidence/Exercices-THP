class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :string
      t.integer :phone_number
      t.text :description

      t.timestamps
    end
  end
end
