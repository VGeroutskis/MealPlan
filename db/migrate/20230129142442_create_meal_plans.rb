class CreateMealPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :meal_plans do |t|

      t.timestamps
    end
  end
end
