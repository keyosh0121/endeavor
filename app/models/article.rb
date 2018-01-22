class Article < ApplicationRecord
  validates :title, presence: true
  def tags
    tags = self.tags_id
    array = tags.split(",")
    tag_array = []
    array.each do |tag_id|
      tag_array.push(Tag.find(tag_id.to_i))
    end
    return tag_array
  end
  def self.list_by_tag(tag_id)
    result = []
    Article.all.each do |article|
      array = article.tags_id.split(",")
      if array.include?(tag_id.to_s)
        result.push(article)
      end
    end
    return result
  end
end
