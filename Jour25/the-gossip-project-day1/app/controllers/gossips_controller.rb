class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end
  
  def new
    @gossip = Gossip.new
    
  end

  def create
    @gossip = Gossip.create(post_params)
    if @gossip.save
    redirect_to gossips_path
    else 
      render :new
    end 
  end

  def edit

  end

  def update

  end

  def destroy
    
  end

  private 
  def post_params
    params.permit(:title,:content)
  end
end
