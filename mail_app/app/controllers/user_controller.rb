class UserController < ApplicationController
	def home
		
	end
	def mail
		  UserMailer.welcome_email.deliver
	end
end
