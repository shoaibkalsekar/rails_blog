class CommentsController < ApplicationController
	def new
		@comment = Post.new(post_params)
	end
	def create
	    @post = Post.find(params[:post_id])
	    @comment = @post.comments.create(params[:comment].permit(:commenter, :body))
	    redirect_to post_path(@post)
	end
end
