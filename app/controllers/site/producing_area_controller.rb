class Site::ProducingAreaController < ApplicationController
  def index
    @producing_areas = ProducingArea.all
  end

  def show
    @alcohols = Search::Alcohol.search_by_producing_area(params[:id])
  end
end