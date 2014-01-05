class Area < ActiveRecord::Base
	has_many :salas
	has_many :camas
end
