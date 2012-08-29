class AddSexoToArbitros < ActiveRecord::Migration
  def change
    add_column :arbitros, :sexo, :string
  end
end
