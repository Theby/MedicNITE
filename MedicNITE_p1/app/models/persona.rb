class Persona < ActiveRecord::Base

 	has_one :paciente, :foreign_key => 'idPersona'
 	has_one :personal_rubro, :foreign_key => 'idPersona'

 	def self.search(search)
	  if search
	    where('nombresPersona LIKE ?', "%#{search}%")
	  else
	   	scoped
	  end
	end
end
