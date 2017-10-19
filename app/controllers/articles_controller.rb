class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
     @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(permitted_new_article_params)

    @article.save!
    redirect_to @article
  end

  private

  def permitted_new_article_params
    params.require(:article).permit(:title, :text)
  end
end
