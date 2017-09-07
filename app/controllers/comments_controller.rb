class CommentsController < ApplicationController

    def create 
 
    @comment = Comment.new(comment_params) # getting a single comment
    @comment.user_id = current_user.id #making it so the comment is made by the current user
    if @comment.save # if the comment gets saved correctly, the user will be redirected to the posts page
            redirect_to "/posts"
        else
            render :action => :new
        end
  end
  






  private
  def set_comment
    @comment = Comment.find(params[:id]) # setting a single comment 
  end
  def comment_params # defining the parameters for a single comment
    params.require(:comment).permit(:content, :user_id, :post_id, session[:user_id], session["post_id"])
  end
   




end
