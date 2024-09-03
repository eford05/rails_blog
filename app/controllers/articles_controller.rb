class ArticlesController < ApplicationController
  def index
    # Fetch all articles from database
    @articles = Article.all
  end

  def show
    # Find a single article by id
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    # After article creation redirect back to article
    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
