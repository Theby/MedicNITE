class Persona < ActiveRecord::Base
 
	def self.search(search)
	  if search
	    where('nombresPersona LIKE ?', "%#{search}%")
	  else
	   	scoped
	  end
	end
end
