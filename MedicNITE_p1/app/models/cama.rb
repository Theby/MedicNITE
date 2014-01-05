class Cama < ActiveRecord::Base
	belongs_to :habitacion
	belongs_to :sala
	belongs_to :area
end
