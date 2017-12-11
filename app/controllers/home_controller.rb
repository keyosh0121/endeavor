class HomeController < ApplicationController
  def index
  end
  def admin
    @article = Article.new
  end
  def save_article
    @article = Article.new
    tag_ids = []
    if params[:category]
      if Category.find_by(name: params[:category])
        @article.category_id = Category.find_by(name: params[:category]).id
      else
        category = Category.new(name: params[:category])
        category.save!
        @article.category_id = category.id
      end
      if params[:tags]
        tags = params[:tags].split(",")
        tags.each do |tag_str|
          if Tag.find_by(name: tag_str)
            tag_ids.push(Tag.find_by(name: tag_str).id)
          else
            new_tag = Tag.new(name: tag_str)
            new_tag.save!
            tag_ids.push(new_tag.id)
          end
        end
      end
    end
    @article.tags_id=(tag_ids.join(","))
    @article.title = params[:title]
    @article.file_name = params[:title] + ".html"
    if @article.save
      File.binwrite('public/articles/' + @article.file_name ,params[:html].read)
      if params[:image]
        File.binwrite('public/images/' + @article.title + '.jpg' ,params[:image].read)
      end
      redirect_to('/index')
    end
  end

  def show_article
    @article = Article.find(params[:id])
  end
  def category_list
    @articles = Article.where(category_id: params[:id])
  end
  def tag_list
    @articles = Article.list_by_tag(params[:id])
  end
end
