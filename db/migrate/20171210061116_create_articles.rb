class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :file_name
      t.integer :category_id
      t.integer :tags_id

      t.timestamps
    end
  end
end
