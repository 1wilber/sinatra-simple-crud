class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :content, null: false
      t.timestamps null: false
    end
  end
end
