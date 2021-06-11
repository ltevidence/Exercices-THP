require 'gossip'
require 'view'
require 'router'

class Controller
  attr_accessor :view
  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[0], params[1])
    gossip.save
  end

  def index_gossips
    all_gossips = Gossip.all
    @view.index_gossips(all_gossips)
  end

  def delete_gossips
    all_gossips = Gossip.all
    Gossip.delete
    params = @view.delete_gossips(all_gossips)
    params.each do |param|
      param.save
    end
  end
end