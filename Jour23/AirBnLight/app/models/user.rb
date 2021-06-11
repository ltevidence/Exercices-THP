class User < ApplicationRecord
  has_many :reservations
  has_many :listings, through: :reservations
  validates :email, 
    uniqueness: true,
    presence: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }


  validates :phone_number,
    uniqueness: true,
    presence: true

end