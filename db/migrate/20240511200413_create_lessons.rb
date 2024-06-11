class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :name, null: false
      t.string :youtubeUrl
      t.references :course_module, index: true, foreign_key: true

      t.timestamps
    end
  end
end
