class CreateCanchas < ActiveRecord::Migration
  def change
    create_table :canchas do |t|
      t.string :nombre
      t.string :pais
      t.string :provincia
      t.string :ciudad
      t.string :calle_y_numero
      t.integer :capacidad_publico

      t.timestamps
    end
  end
end
