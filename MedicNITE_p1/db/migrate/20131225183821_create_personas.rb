class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombresPersona, limit: 40
      t.string :apellidosPersona, limit: 40
      t.date :fechaNacimientoPersona
      t.string :rutPersona, limit: 10
      t.string :domicilioPersona, limit: 40

      t.timestamps
    end
  end
end
