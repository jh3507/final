class AddGoalRefToPlans < ActiveRecord::Migration[5.1]
  def change
    add_reference :plans, :goal, foreign_key: true
  end
end
