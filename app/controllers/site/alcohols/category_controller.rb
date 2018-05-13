class Site::Alcohols::CategoryController < Site::ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @alcohols = Search::Alcohol.search_by_category(params[:id])
  end
end
