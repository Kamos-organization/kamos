class Site::MypageController < ApplicationController
  before_action :sign_in_required

  def interests
    @alcohols = Interest.search_by_interest(params[:id])
  end

  def favorites
    @alcohols = Favorite.search_by_favorite(params[:id])
  end

  def recommends
    @alcohols = Recommend.search_by_recommend(params[:id])
  end

  def histories
    @alcohols = History.search_by_history(params[:id])
  end
end
