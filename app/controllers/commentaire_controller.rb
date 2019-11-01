class CommentaireController < ApplicationController
  def new
  end

  def create
    @comment = Commentaire.create(content: params[:comment_content], user_id: current_user.id, gossip_id: params[:id])

    if @comment.save
      flash[:notice] = 'Votre commentaire a bien été enregistré'
      render gossip_path(params[:id])
    else
      flash[:danger] = 'Un problème est survenu avec la publication de votre commentaire, veuillez réessayer'
      redirect_to gossip_path(params[:gossip_id])
    end
  end

  def edit

  end

end
