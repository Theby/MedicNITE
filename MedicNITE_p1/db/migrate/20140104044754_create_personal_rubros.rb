class CreatePersonalRubros < ActiveRecord::Migration
  def change
    #create_table :personal_rubros do |t|
    create_table :personal_rubros, primary_key: "idPersona", force: true do |t|
      #t.integer :idPersona
      t.integer :idTipoPersonalRubro,   null: false
      t.string :especialidadPersonalRubro, limit: 40,   null: false

      t.timestamps
    end
  end
end
