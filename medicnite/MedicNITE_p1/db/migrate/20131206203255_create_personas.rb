class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombres
      t.string :apellidos
      t.string :rut

      t.timestamps
    end
  end
end
