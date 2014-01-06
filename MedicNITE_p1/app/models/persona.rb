class Persona < ActiveRecord::Base
<<<<<<< HEAD
 	has_one :paciente, :foreign_key => 'idPersona'
 	has_one :personal_rubro, :foreign_key => 'idPersona'

	def self.search(search)
=======
 	def self.search(search)
>>>>>>> 4936c25427d5f0f430d32a659e96a6619d52a842
	  if search
	    where('nombresPersona LIKE ?', "%#{search}%")
	  else
	   	scoped
	  end
	end
end
