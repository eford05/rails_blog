class ArticlesController < ApplicationController
  def index
    # Fetch all articles from database
    @articles = Article.all
  end
end
