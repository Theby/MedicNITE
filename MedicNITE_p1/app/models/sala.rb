class Sala < ActiveRecord::Base
	has_many :camas
	has_many :habitacions
end
