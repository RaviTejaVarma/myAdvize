class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :body
      t.integer :user_id
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
