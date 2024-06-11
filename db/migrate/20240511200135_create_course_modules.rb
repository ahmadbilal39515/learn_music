class CreateCourseModules < ActiveRecord::Migration[7.0]
  def change
    create_table :course_modules do |t|
      t.string :name, null: false
      t.references :course, index: true, foreign_key: true

      t.timestamps
    end
  end
end
