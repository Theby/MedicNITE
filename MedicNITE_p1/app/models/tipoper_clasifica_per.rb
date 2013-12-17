class TipoperClasificaPer < ActiveRecord::Base
	belongs_to :persona
	belongs_to :tipo_persona
end
