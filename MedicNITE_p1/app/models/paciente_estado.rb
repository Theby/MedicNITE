class PacienteEstado < ActiveRecord::Base
	has_many :pacientes
end
