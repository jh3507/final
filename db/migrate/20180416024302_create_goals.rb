class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :importance

      t.timestamps
    end
  end
end
