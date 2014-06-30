class UserController < ApplicationController

	def home
		session[:ses_id]="it is session id"
		cookie[:cookie_id]="it is cookie id"
	end
	def register
	end
	def show
	end
end
