class Site::Alcohols::TopController < Site::ApplicationController
  def index
    @alcohol = Search::Alcohol.new
  end

  def show
    @alcohol = Alcohol.find(params[:id])
  end

  def review
  end

  def search
    @alcohol = Search::Alcohol.new(search_params)
    @alcohols = @alcohol.matches
  end

  private

  def search_params
    params
        .require(:search_alcohol)
        .permit(Search::Alcohol::ATTRIBUTES)
  end
end
