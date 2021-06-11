class RemoveColumnToUser < ActiveRecord::Migration[6.1]
  def self.down
    remove_column :users, :city_id
  end
end
