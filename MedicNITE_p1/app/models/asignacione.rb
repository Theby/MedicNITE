class Asignacione < ActiveRecord::Base
	belongs_to :asignacionTipo
	belongs_to :usuario
	belongs_to :cama
	belongs_to :sala
	belongs_to :area
	belongs_to :personalRubro
	belongs_to :paciente 
	has_many   :desocupamiento_recintos, :foreign_key => 'idAsignacion'
end
