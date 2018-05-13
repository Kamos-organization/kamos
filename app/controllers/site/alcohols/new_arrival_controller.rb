class Site::Alcohols::NewArrivalController < Site::ApplicationController
  def index
    @alcohols = Search::Alcohol.search_by_new_arrivals
  end
end
