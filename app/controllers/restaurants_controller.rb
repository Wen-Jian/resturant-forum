class RestaurantsController < ApplicationController

	before_action :authenticate_admin, only: [:new, :edit, :update, :delete, :create]
	def index
		
		if current_user

			if session[:restaurant_id]

				@rest_id = session[:restaurant_id]
				@blog_id = session[:blog_id]
				session[:restaurant_id] = nil
				session[:blog_id] = nil
				redirect_to restaurant_blog_path(@rest_id, @blog_id)

			end
			
		end

		@newblogs = (Blog.all).order('created_at DESC').limit(6)
		
		@hotblogs = (Blog.all).order('hot_count ASC').limit(6)



	end

	def show
		
	end

	def new
		
	end

	def create
		
	end

	def edit
		
	end

	def update
		
	end

	def delete
		
	end


end
