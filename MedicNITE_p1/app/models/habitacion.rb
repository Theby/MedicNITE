class Habitacion < ActiveRecord::Base
	has_many :camas
	belongs_to :sala
end
