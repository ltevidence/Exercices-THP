require 'pry'
require 'csv'

class Gossip 
  attr_accessor :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save 
    CSV.open('./db/gossip.csv', 'a+') do |csv|
      csv << [@content, @author]
    end
  end

  def self.all
    all_gossips = []
    CSV.foreach("./db/gossip.csv") do |csv|
      all_gossips << Gossip.new(csv[0],csv[1])
    end
    return all_gossips
  end

  def self.delete
    CSV.open("db/gossip.csv", "w") {|csv| csv.truncate(0) }
  end
end