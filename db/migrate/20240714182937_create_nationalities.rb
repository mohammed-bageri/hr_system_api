class CreateNationalities < ActiveRecord::Migration[7.1]
  def change
    create_table :nationalities do |t|
      t.string :name

      t.timestamps
    end
  end
end
