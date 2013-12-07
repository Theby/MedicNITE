class HomeController < ApplicationController
	def index
		if usuario_signed_in?
			redirect_to :controller => 'redirector', :action => 'index'
		end
	end
end
