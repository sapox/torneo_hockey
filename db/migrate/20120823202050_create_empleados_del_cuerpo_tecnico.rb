class CreateEmpleadosDelCuerpoTecnico < ActiveRecord::Migration
  def change
    create_table :empleados_del_cuerpo_tecnico do |t|
      t.string :nombre
      t.string :apellido
      t.string :dni
      t.date :fecha_de_nacimiento
      t.string :telefono_fijo
      t.string :telefono_celular
      t.string :email
      t.string :direccion

      t.timestamps
    end
  end
end
