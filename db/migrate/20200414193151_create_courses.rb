class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :workload
      t.float :price
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
