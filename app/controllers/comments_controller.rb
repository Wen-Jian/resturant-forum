class CommentsController < ApplicationController

	def create

		@comment = Commment.new(comment_params)

		if comment.save

			blog = Blog.find(@comment.blog_id)
			blog[:hot_count] += 1
			blog.save
			redirect_to resturant_blog_path(params[:resturant_id], params[:blog_id])
		else

			render :controller => blogs, :action => :show
		end	
	end



	private

	def comment_params

		params.require(:comment).permit(:user_id, :blog_id, :commenter)
		
	end

end
