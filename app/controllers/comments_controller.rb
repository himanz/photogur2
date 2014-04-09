class CommentsController < ApplicationController
	def create
    @comment = Comment.new
    @comment.author = params[:comment][:author]
    @comment.content = params[:comment][:content]
    
    if @comment.save
    	redirect_to pictures_path
    else
    end
	end

end
