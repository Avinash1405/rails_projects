class AdminsController < ApplicationController
	http_basic_authenticate_with name: "avinash",password: "123"
layout "main"
#render nothing: true 
def form
	logger.debug "This is from debug"
end
def a
	puts "FORM IN AdminsController"
end

end
