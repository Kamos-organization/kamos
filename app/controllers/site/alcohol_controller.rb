
class Site::AlcoholController < ApplicationController
  def index
    @alcohol = Search::Alcohol.new
  end

  def show
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
