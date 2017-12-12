class BlogsController < ApplicationController

	def index
		
	end

	def show

		# @blog = Blog.find(params[:id])
		unless current_user
			session[:resturant_id] = params[:resturant_id]
			session[:blog_id] = params[:id]
		end
		
	end

end
