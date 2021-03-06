class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :recipe_id
      t.string :text
      t.timestamp :created_at

      t.timestamps
    end
  end
end
