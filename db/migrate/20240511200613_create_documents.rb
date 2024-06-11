class CreateDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :documents do |t|
      t.string :name, null: false
      t.references :lesson, index: true, foreign_key: true
      t.timestamps
    end
  end
end
