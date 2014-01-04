class Paciente < ActiveRecord::Base
	belongs_to	:paciente_estado
	belongs_to	:paciente_tipo
	#belongs_to	:persona

end
