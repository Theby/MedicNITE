class TipoPersona < ActiveRecord::Base
	has_many :tipoper_clasifica_pers
	has_many :personas, through: :tipoper_clasifica_pers
end
