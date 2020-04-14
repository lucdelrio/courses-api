class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.string :name
      t.text :content
      t.float :score
      t.datetime :deleted_at
      t.references :course, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
