class ResturantsController < ApplicationController
	before_action :authenticate_admin, only: [:new, :edit, :update, :delete, :create]
	def index
		
		if current_user

			if session[:resturant_id]

				@rest_id = session[:resturant_id]
				@blog_id = session[:blog_id]
				session[:resturant_id] = nil
				session[:blog_id] = nil
				redirect_to resturant_blog_path(@rest_id, @blog_id)

			end

		end
		



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
