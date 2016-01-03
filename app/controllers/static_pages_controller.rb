class StaticPagesController < ApplicationController
	
	# home page
	def index

	end

	def send_message
		respond_to do |format|
			if params[:Name] == "" || params[:Mail] == "" || params[:Message] == ""
				@error= "One of the fields was left blank"
			elsif
			    name = params[:Name] 
			    mail = params[:Mail]
			    message = params[:Message]

				UserMailer.user_message(name, mail, message).deliver
			end

			format.js {}
			format.json {}
		end
	end
end
