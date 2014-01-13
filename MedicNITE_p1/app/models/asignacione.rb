class Asignacione < ActiveRecord::Base
	belongs_to :asignacionTipo
	belongs_to :usuario
	belongs_to :cama
	belongs_to :sala
	belongs_to :area
	belongs_to :personalRubro
	belongs_to :paciente 
	has_many   :desocupamiento_recintos, :foreign_key => 'idAsignacion'

	after_create :asigna_cama

  private
    def asigna_cama
    	# Al asignar una cama, cambiar agributo estadoCama = "Ocupada".
	    @cama = Cama.find(self.idCama)
	    if self.idCama != nil
	        @cama.estadoCama = "Ocupada"
	        @cama.save
	        # Y si tiene una habitación asociada, tambien se marca como "Ocupada"
	        if @cama.idHabitacion != nil
	        	@habitacion = Habitacion.find(@cama.idHabitacion)
			    @habitacion.estadoHabitacion = "Ocupada"
			    @habitacion.save 
	        end	      		      			    
	    end 
    end
end
