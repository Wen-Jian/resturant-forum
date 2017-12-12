class CommentsController < ApplicationController

	def create

		@comment = Commment.new(comment_params)

		if comment.save

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
