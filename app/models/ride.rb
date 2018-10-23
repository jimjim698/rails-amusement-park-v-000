class Ride < ActiveRecord::Base
  belongs_to :attraction
  belongs_to :user

  def tall_enough
    
    self.user.height >= self.attraction.min_height
  end

  def enough_tickets
    self.user.tickets >= self.attraction.tickets
  end

  def take_ride
    if tall_enough && enough_tickets
      ride
    elsif
      !tall_enough && enough_tickets
      "Sorry you are not tall enough to ride this ride"
    elsif
      tall_enough && !enough_tickets
      "Sorry you do not have enough tickets to ride this ride"
    end
  end

  def ride
    binding.pry
    happiness = self.user.happiness + self.attraction.happiness_rating
    nausea = self.user.nausea + self.attraction.nausea_rating
    tickets = self.user.tickets - self.attraction.tickets
    self.user.update(happiness: happiness, nausea: nausea, tickets: tickets)
    "Thanks for riding the #{self.attraction.name}"
  end
end
