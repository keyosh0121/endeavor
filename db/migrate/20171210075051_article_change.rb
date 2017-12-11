class ArticleChange < ActiveRecord::Migration[5.1]
  def change
    change_column :articles, :tags_id, :integer
  end
end
