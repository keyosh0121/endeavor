class Tag < ApplicationRecord
  def count
    array = []
    Article.all.each do |article|
      article.tags.each do |tag|
        if tag == self
          array.push(tag)
        end
      end
    end
    return array.count
  end
end
