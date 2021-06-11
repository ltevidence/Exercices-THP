class Reservation < ApplicationRecord
  validates :start_date, 
    uniqueness: true,
    presence: true
  
  validates :end_date, 
    uniqueness: true,
    presence: true

    belongs_to :user, optional: true
    belongs_to :listing, optional: true

    def overlaping_reservation?(datetime)
      # vérifie dans toutes les réservations du listing s'il y a une réservation qui tombe sur le datetime en entrée
      if start_date == end_date
        return true
      end
    end
end
