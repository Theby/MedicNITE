class Persona < ActiveRecord::Base
	has_many :tipoper_clasifica_pers
	has_many :tipo_personas, through: :tipoper_clasifica_pers	
end
