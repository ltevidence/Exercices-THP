class Gossip < ApplicationRecord
  belongs_to :user, optional: true
  has_many :gossip_tags
  has_many :tags
end
