class CreateFoodCollects < ActiveRecord::Migration[7.0]
  def change
    create_table :food_collects do |t|
      t.string :name
      t.date :date
      t.references :organization, null:false, foreign_key: true

      t.timestamps
    end
  end
end
