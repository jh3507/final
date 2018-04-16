class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string :name
      t.string :plan1
      t.string :plan2
      t.string :plan3
      t.string :plan4
      t.string :plan5
      t.string :plan6
      t.string :plan7
      t.string :plan8

      t.timestamps
    end
  end
end
