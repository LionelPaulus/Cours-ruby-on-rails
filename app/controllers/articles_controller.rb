class ArticlesController < ApplicationController

  before_action :fetch_article

  # def index
  #   @articles = Article.all
  # end

  private
    def fetch_article
      @article = Article.published.find(params[:id])
    end

end
