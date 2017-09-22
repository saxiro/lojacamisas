class CreateLivros < ActiveRecord::Migration[5.1]
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :autor
      t.integer :lancamento

      t.timestamps
    end
  end
end
