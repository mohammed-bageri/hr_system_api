class ChangeRoleToInteger < ActiveRecord::Migration[7.1]
  def up
    remove_column :users, :role
    add_column :users, :role, :integer, default: 1
  end

  def down
    remove_column :users, :role
    add_column :users, :role, :string, default: 'regular'
  end
end
