class TheGossipProjectController < ApplicationController
  def index

  end

  def team
  end

  def contact
  end

  def welcome
    end

  def gossip
    @gossip = Gossip.find(params[:gossip_id])
  end
  
  def user_id
    @user = User.find(params[:user_id])
  end 
end