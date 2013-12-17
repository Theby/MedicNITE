class CreateTipoperClasificaPers < ActiveRecord::Migration
  def change
    create_table :tipoper_clasifica_pers do |t|
      t.integer :idTipoPersona, :null => false
      t.integer :idPersona, :null => false

      t.timestamps
    end
  end
end
