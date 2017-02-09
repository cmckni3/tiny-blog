class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      [:title, :slug].each { |column| t.string column, null: false }
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :blogs, :slug, unique: true
  end
end
