class CreateEmployeeStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :employee_statuses do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true
      t.references :department, null: false, foreign_key: true
      t.references :salary, null: false, foreign_key: true
      t.references :manager, null: false, foreign_key: { to_table: :users }
      t.datetime :start_date
      t.datetime :finish_date
      t.references :address, null: false, foreign_key: true
      t.datetime :record_replaced_date
      t.datetime :record_ended_date

      t.timestamps
    end
  end
end
