class AddIndexToListingAndUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :listings, :city, foreign_key: true
    add_reference :users, :city, foreign_key: true
  end
end
