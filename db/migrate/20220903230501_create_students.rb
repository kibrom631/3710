class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :student_id
      t.text :physical_address
      t.integer :phone_number

      t.timestamps
    end
  end
end
