class CreatePersonalRubroTipos < ActiveRecord::Migration
  def change
    #create_table :personal_rubro_tipos do |t|
   	create_table :personal_rubro_tipos, primary_key: "idTipoPersonalRubro", force: true do |t|
      #t.integer :idTipoPersonalRubro
      t.string :tipoPersonalRubro, limit: 20,   null: false

      t.timestamps
    end
  end
end
