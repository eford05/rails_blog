class ArticlesController < ApplicationController
  def index
    # Fetch all articles from database
    @articles = Article.all
  end

  def show
    # Find a single article by id
    @article = Article.find(params[:id])
  end
end
