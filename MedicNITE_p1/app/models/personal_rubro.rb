class PersonalRubro < ActiveRecord::Base
	belongs_to :personal_rubro_tipo
	has_one :usuario
end
