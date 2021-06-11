class Tag < ApplicationRecord
  belongs_to :gossip, optional: true
  has_many :gossip_tags
  has_many :gossips, through: :gossip_tags
end
