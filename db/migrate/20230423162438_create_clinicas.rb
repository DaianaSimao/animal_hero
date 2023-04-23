class CreateClinicas < ActiveRecord::Migration[5.2]
  def change
    create_table :clinicas do |t|
      t.string :nome
      t.string :endereco
      t.integer :numero
      t.string :estado
      t.string :logo

      t.timestamps
    end
  end
end
