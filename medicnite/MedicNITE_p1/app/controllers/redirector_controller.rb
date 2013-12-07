## Luego de loguearse el usuario, se accede a esta página.
## Esta página accede a la informavión del usuario, y según su 
## nivel de autorización, se redirige al perfil correspondiente. 
class RedirectorController < ApplicationController
	before_filter :authenticate_usuario!
	def index
		@usuario = current_usuario		
	end
	
end
