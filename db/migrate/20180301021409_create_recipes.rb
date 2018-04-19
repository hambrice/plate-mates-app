class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image
      t.string :instructions
      t.integer :prep_time
      t.integer :cook_time
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
