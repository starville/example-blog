class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create!(comment_params)    
	    redirect_to @post, :notice=>"Comment create!"
	end
    
    private   
    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params                 
      params.require(:comment).permit(:author, :body)
    end
end
