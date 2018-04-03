class Site::Alcohols::CategoryController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @alcohols = Search::Alcohol.search_by_category(params[:id])
  end
end
