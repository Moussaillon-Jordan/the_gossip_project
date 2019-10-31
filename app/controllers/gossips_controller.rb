class GossipsController < ApplicationController
  def new
    Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:gossip_title], content: params[:gossip_content], user_id: session[:user_id])
    if @gossip.save
      render 'index'
    else
      render 'new'
    end
  end

  def show
    @gossip = Gossip.find(params[:id])
    @user = User.find(@gossip.user_id)
  end

  def index
    @gossips = Gossip.all
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(title: params[:gossip_title], content: params[:gossip_content])
      redirect_to @gossip
    else
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    @gossips = Gossip.all
    render 'gossip/index'
  end
end
