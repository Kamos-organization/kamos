class Site::Alcohols::ReviewController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_alcohol, only: [:show, :edit, :update, :destroy]

  def index
    @alcohols = Alcohol.reviews(current_user.id)
  end

  def new
    @review = Review.new
    @alcohol = Alcohol.find(params[:alcohol_id])
  end

  def create
    review = Review.new(review_create_params(params[:alcohol_id], current_user.id))
    alcohol = Alcohol.find(review.alcohol_id)

    respond_to do |format|
      if review.save
        format.html { redirect_to alcohols_show_path(alcohol), notice: t('created_review') }
        format.json { render alcohols_show_path, status: :created, location: review }
      else
        format.html { render :new }
        format.json { render json: alcohol.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @review.update(review_update_params)
        format.html { redirect_to alcohols_show_path(@alcohol), notice: t('updated_review') }
        format.json { render alcohols_show_path, status: :updated, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @alcohol.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def review_create_params(alcohol_id, user_id)
    params
        .require(:review)
        .permit(:evaluation,
                :sweetness,
                :acidity,
                :bitter,
                :richness,
                :kire,
                :fragrance,
                :alcohol_id,
                :title,
                :content)
        .merge(alcohol_id: alcohol_id, user_id: user_id)
  end

  def review_update_params
    params
        .fetch(:review, {})
        .permit(:evaluation,
                :sweetness,
                :acidity,
                :bitter,
                :richness,
                :kire,
                :fragrance,
                :title,
                :content)
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def set_alcohol
    @alcohol = Alcohol.find(@review.alcohol_id)
  end
end
