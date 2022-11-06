class CreateSectionsStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :sections_students do |t|
      t.belongs_to :section, null: false, foreign_key: true
      t.belongs_to :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
