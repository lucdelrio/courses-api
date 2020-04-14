class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :surname
      t.string :birthdate
      t.text :address
      t.string :email
      t.integer :phone_number
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
