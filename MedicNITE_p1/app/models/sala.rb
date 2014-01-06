class Sala < ActiveRecord::Base
	has_many :camas
	has_many :habitacions
	has_many :asignaciones
	belongs_to :area

	def self.search(search)
	  if search
	    where('codVisibleSala LIKE ?', "%#{search}%")
	  else
	   	scoped
	  end
	end
end
