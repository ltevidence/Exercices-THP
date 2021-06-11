class Gossip < ApplicationRecord
 has_many :tag_and_gossips
 has_many :tags, through: :tag_and_gossips
 belongs_to :user, optional: true
end
