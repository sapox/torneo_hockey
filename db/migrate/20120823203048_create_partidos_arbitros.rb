class CreatePartidosArbitros < ActiveRecord::Migration
  def change
    create_table :partidos_arbitros do |t|
      t.integer :partido_id
      t.integer :arbitro_id
      t.string :dni

      t.timestamps
    end
  end
end
