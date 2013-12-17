class CreateTipoPersonas < ActiveRecord::Migration
  def change
    create_table :tipo_personas do |t|
      t.string :nombreTipoPersona

      t.timestamps
    end
  end
end
