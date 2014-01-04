class RecintosController < ApplicationController
	before_filter :authenticate_usuario!
end
