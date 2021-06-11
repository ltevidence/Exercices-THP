class GossipsController < ApplicationController
  def index
    
  end
  
  def new
    @gossips = Gossip.new
    
  end

  def create
    @gossips = Gossip.create('title' => params[:title],'content' => params[:content],user: User.find_by(id: session[:user_id]))

    if @gossips.save
      redirect_to gossips_path
    else 
      puts "try again"
      render :new
    end
  end
  
  def show
    @gossips = Gossip.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy
    
  end

  def user
    @user = User.find(params[:user_id])
  end 
end
