class AddIndexToGossipTag < ActiveRecord::Migration[6.1]
  def change
    add_reference :gossip_tags, :gossip, foreign_key: true
    add_reference :gossip_tags, :tag, foreign_key: true
  end
end
