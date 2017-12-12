class ChatroomsController < ApplicationController

	def index

		@room = Chatroom.all
		
		
	end

	def show
    	
    	@chatroom = Chatroom.find(params[:id])
    	@message = Message.new

  	end

  	def new
  		
  		@room = Chatroom.new

  	end
  	def create

  		@room = Chatroom.new(room_param)
  		if @room.save

  			redirect_to chatrooms_path

  		else

  			render action: :new

  		end
  		
  	end





  	private

  	def room_param

  		params.require(:room).permit(:topic)
  		
  	end

end
