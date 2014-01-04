class CreatePacientes < ActiveRecord::Migration
	  def change
	     #create_table "pacientes", id: false, force: true do |t|
	     	create_table "pacientes", primary_key: "idPersona", force: true do |t|
		    t.integer   "perIdPersona",     null: false
		    #t.integer   "idPersona",        null: false
		    t.integer   "idTipoPaciente",   null: false
		    t.integer   "idEstadoPaciente", null: false
			
		    t.timestamps
	  end
  end
end
