class CreateSalaries < ActiveRecord::Migration[7.1]
  def change
    create_table :salaries do |t|
      t.float :amount

      t.timestamps
    end
  end
end
