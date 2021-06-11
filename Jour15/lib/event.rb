require 'pry'

class Event
  require 'time'
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration,title,attendees)
    @attendees = attendees
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @title = title
  end

  def postpone_24h
    @start_date = start_date + 24*60*60
  end

  def event_ending
  end_date = @start_date + @duration * 60
  print "L'évenement #{title} se termine le #{end_date}."
  end

  def is_past?
    if start_date < Time.now
      return "L'évenement est passé."
    else 
      return false
    end
  end

  def is_future?
    if start_date > Time.now
      return "L'évènement n'est pas passé."
    else 
      return "L'évenement est passé."
    end
  end

  def is_soon?
    if start_date < Time.now + duration * 60
      true
    else false
    end
  end

  def to_s
      puts ">Titre : #{title}"
      puts ">Date de début: #{start_date}"
      puts ">Durée : #{duration} minutes"
      puts ">Invités : #{attendees}"
  end

  def age_analysis
    age_array = []
    average = 0

    @attendees.each do |attendee|
      age_array << attendee.age
      average = average + attendee.age
    end
    average = average / @attendees.length
    puts "Voici les âges des participants :"
    puts age_array.join(", ")
    puts "La moyenne d'âge est de #{average} ans."
  end
  
end

#rdv = Event.new("2022-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
#puts rdv.event_ending
#puts rdv.is_past?
#puts rdv.is_future?
#puts rdv.postpone_24h
#rdv.to_s