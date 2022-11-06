class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.string :CRN
      t.belongs_to :course, null: true, foreign_key: true
      t.belongs_to :semester, null: true, foreign_key: true

      t.timestamps
    end
  end
end
