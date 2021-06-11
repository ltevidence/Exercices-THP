require 'pry'
class View

  def create_gossip
    puts "Qui est l'auteur :"
    author = gets.chomp
    puts "Raconte ton potin :"
    content = gets.chomp
    params = Hash.new
    #return params.merge!(author: author,content: content)
    return params = [content, author]
  end

  def index_gossips(gossips)
    i = 0
    gossips.each do |gossip|
      i +=1
      puts "#{i}. " + gossip.content + " >> signé par " + gossip.author
    end
  end

  def delete_gossips(gossips)
    i = 0
    gossips.each do |gossip|
      i +=1
      puts "#{i}. " + gossip.author + " : " + gossip.content
    end
    num = gets.chomp.to_i
    num -=1
    gossips.delete_at(num)
    return gossips
  end
end