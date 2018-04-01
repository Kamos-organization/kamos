class Site::Alcohols::RankingController < ApplicationController
  def index
    @alcohols = Search::Alcohol.search_by_ranking
  end
end
