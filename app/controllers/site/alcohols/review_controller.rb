class Site::Alcohols::ReviewController < ApplicationController
  def new
    @review = Review.new
    @alcohol = Alcohol.find(params[:alcohol_id])
  end

  def create
    @review = Review.new(review_params)
    @review[:user_id] = current_user.id
    @review[:alcohol_id] = params[:alcohol_id]
    @alcohol = Alcohol.find(params[:alcohol_id])

    respond_to do |format|
      if @review.save
        format.html { redirect_to alcohols_show_path(@alcohol), notice: 'レビューを投稿しました。' }
        format.json { render alcohols_show_path, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @alcohol.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def review_params
    params
        .require(:review)
        .permit(:title, :content)
        # .permit(:evaluation, :sweetness, :acidity, :bitter, :richness, :kire, :fragrance, :title, :content)
  end
end
