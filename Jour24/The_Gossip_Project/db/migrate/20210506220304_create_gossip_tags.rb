class CreateGossipTags < ActiveRecord::Migration[6.1]
  def change
    create_table :gossip_tags do |t|
      
      t.timestamps
    end
  end
end
