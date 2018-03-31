class Site::NewArrivalController < ApplicationController
  def index
    @alcohols = Search::Alcohol.search_by_new_arrivals
  end
end
