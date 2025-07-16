class CreateQuadras < ActiveRecord::Migration[8.0]
  def change
    create_table :quadras do |t|
      t.string :nome, null: false

      t.timestamps
    end
  end
end
