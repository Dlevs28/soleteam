class GetInTouchController < ApplicationController
	def new
		@get_in_touch = get_in_touch.new 
	end

	def create
		@get_in_touch=get_in_touch.new(secure_params)
		if @get_in_touch.valid?
			#TODO save data
			#TODO send message
			flash [:notice]= "Message sent from #{@get_in_touch.name}."
			redirect_to root_path
		else
			render :new
		end
	end

	private
	def secure_params
		params.require(:get_in_touch).permit(:name, :email, :content)
	end
end
