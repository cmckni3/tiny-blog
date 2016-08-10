class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.references :blog, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
