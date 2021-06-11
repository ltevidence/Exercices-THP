require 'bundler'
require 'pry'
Bundler.require

require_relative "lib/event.rb"
require_relative "lib/user.rb"
require_relative "lib/workevent.rb"

class App
  def initialize
    puts "Salut, quel est le nom de l'évenement ?"
    print ">"
    title = gets.chomp.to_s
    puts "Cool, et c'est quand ? (format YYYY-MM-DD HH:MM) :"
    print ">"
    start_date = gets.chomp
    puts "Ok ! Et ça dure combien de temps (en minutes) ?"
    print ">"
    duration = gets.chomp
    puts "D'accord, quelques mail de participants ?"
    print ">"
    att_list = gets.chomp
    attendees = att_list.split("; ")

    puts "L'evenement à été crée"
    return Event.new(start_date,duration,title,attendees).to_s
  end

end

julie = User.new("julie@email.com", 35)
jean = User.new("jean@maimail.com", 22)
michel = User.new("jean@mail.com", 27)
arthur = User.new("arthur@maimail.com", 36)

my_event = WorkEvent.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean, arthur, michel])

binding.pry
puts "end of file"