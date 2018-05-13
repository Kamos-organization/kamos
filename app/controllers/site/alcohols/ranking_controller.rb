class Site::Alcohols::RankingController < Site::ApplicationController
  def index
    @alcohols = Search::Alcohol.search_by_ranking
  end
end
