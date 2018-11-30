class CommentsController < ApplicationController


#	def create
#		@post = Post.find(params[:post_id])
##		@post = Post.friendly.find(params[:post_id])
#	 	@comment = @post.comments.create(params[:comment].permit(:name, :comment, :user_id))
##		@comment = @comment.merge(params(user_id: current_user.id))
#		redirect_to post_path(@post)	
#	end

	def new
  	@comment = Comment.new
	end


  def create
 	  @post = Post.find(params[:post_id])
#    @comment = Comment.new(comment_params)
    @comment = @post.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      flash[:success] = "Thanks for sharing your thoughts!"
      redirect_to @post
    else
      flash[:danger] = "There was an error posting your comment!"
      redirect_back fallback_location: root_path
    end
  end


	def show
  	@comment = Comment.find(params[:id])
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end



private

  def comment_params
    params.require(:comment).permit(:name, :comment, :post_id)
  end

	def find_comment
	  @comment = if params[:comment_id]
	                   Comment.find_by_id(params[:comment_id])
	                 elsif params[:post_id]
	                   Post.friendly.find(params[:post_id])
	                 end
	  # You should also handle the case if `@commentable` is `nil` after above.
	  redirect_to somewhere, error: 'Post/Comment not found' unless @comment
	end

end
