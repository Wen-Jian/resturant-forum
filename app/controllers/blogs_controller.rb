class BlogsController < ApplicationController

	def index
		
	end

	def show

		@blog = Blog.find(params[:id])
		unless current_user
			session[:restaurant_id] = params[:restaurant_id]
			session[:blog_id] = params[:id]
		end

		@comments = Blog.includes(:commments).find(params[:id])
		
		
	end

	def new
		
	end

	def create
		
	end

end
