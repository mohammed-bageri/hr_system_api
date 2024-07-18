class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, index: { unique: true }
      t.string :password_digest
      t.string :role, default: 'regular'

      t.timestamps
    end
  end
end
