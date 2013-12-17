class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :rutPersona
      t.string :nombresPersona
      t.string :apellidopaternoPersona
      t.string :apellidomaternoPersona

      t.timestamps
    end
  end
end
