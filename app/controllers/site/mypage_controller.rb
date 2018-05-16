class Site::MypageController < ApplicationController
  before_action :sign_in_required

  def interests
    @interests = Interest.search_by_interest(params[:id])
  end

  def favorites
    @favorites = Favorite.search_by_favorite(params[:id])
  end

  def recommends
    @recommends = Recommend.search_by_recommend(params[:id])
  end

  def histories
    @histories = History.search_by_history(params[:id])
  end

  def add_interest
    unless Interest.is_exist?(params[:format], current_user.id)
      interest = Interest.new(alcohol_id: params[:format], user_id: current_user.id)
      interest.save
    end
  end

  def add_favorite
    unless Favorite.is_exist?(params[:format], current_user.id)
      favorite = Favorite.new(alcohol_id: params[:format], user_id: current_user.id)
      favorite.save
    end
  end
end
