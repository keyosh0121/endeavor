class ArticleChange2 < ActiveRecord::Migration[5.1]
  def change
    change_column :articles, :tags_id, :string
  end
end
