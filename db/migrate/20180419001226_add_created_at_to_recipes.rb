class AddCreatedAtToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :created_at, :timestamp
  end
end
