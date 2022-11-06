class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.belongs_to :prefix, null: true, foreign_key: true
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
