class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.datetime :hire_date
      t.references :education, null: false, foreign_key: true

      t.timestamps
    end
  end
end
