class User < ApplicationRecord
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
  belongs_to :city, optional: true
  has_many :gossips
  has_secure_password
  validates :password,
  presence: true,
  length: {in: 6..12}
end
