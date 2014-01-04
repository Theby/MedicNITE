class CreatePacienteEstados < ActiveRecord::Migration
    def change
	create_table "paciente_estados", primary_key: "idEstadoPaciente", force: true do |t|
    		t.string "estadoPaciente", limit: 40

      		t.timestamps
    	end
    end
end
