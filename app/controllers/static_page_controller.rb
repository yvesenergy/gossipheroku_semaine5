class StaticPageController < ApplicationController
	
  def home
  	@gossips = Gossip.all
  end

  def team
  end

  def welcoming
  	@name =params[:name]
  end

  def contact
  end
  
  def ajouter
    gossip = Gossip.new
    gossip.Author = params[:auteur]
    gossip.Content = params[:gos]
    gossip.save
  end

  def modif
    @go = Gossip.find(params['id'])
    return @go
    Gossip.find(params[:author_id]).update Content:params[:go]
    redirect_to '/'
  end

  def supprimer
    @go = Gossip.find(params[:id])
    @go.destroy
    redirect_to '/'
  end


end
