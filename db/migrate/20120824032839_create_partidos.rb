class CreatePartidos < ActiveRecord::Migration
  def change
    create_table :partidos do |t|
      t.integer :cancha_id
      t.date :fecha
      t.datetime :fecha_encuentro

      t.timestamps
    end
  end
end
