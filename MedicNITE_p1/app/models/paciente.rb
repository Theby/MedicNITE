class Paciente < ActiveRecord::Base
	self.primary_key = 'idPersona'
	self.primary_key = 'perIdPersona'
	belongs_to	:paciente_estado
	belongs_to	:paciente_tipo
	#belongs_to	:persona

end
