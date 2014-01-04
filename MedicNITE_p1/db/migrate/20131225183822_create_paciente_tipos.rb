class CreatePacienteTipos < ActiveRecord::Migration
    def change
	create_table "paciente_tipos", primary_key: "idTipoPaciente", force: true do |t|
    		t.string "tipoPaciente", limit: 20

      		t.timestamps
    	end
    end
end
