class CreateClubes < ActiveRecord::Migration
  def change
    create_table :clubes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
