class Site::Alcohols::Controller < ApplicationController
  before_action :make_graph, only: [:show]

  def index
    @alcohol = Search::Alcohol.new
  end

  def show
    @alcohol = Alcohol.find(params[:alcohol_id])
    @evaluation = Review.average_evaluation(params[:alcohol_id])
    @reviews = Review.reviews_by_alcohol_id(params[:alcohol_id])
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

  def make_graph
    genre = [
        t('activerecord.attributes.review.kire'),
        t('activerecord.attributes.review.sweetness'),
        t('activerecord.attributes.review.acidity'),
        t('activerecord.attributes.review.bitter'),
        t('activerecord.attributes.review.richness'),
        t('activerecord.attributes.review.fragrance')
    ]
    aData = [
        Review.average_kire(params[:alcohol_id])&.round,
        Review.average_sweetness(params[:alcohol_id])&.round,
        Review.average_acidity(params[:alcohol_id])&.round,
        Review.average_bitter(params[:alcohol_id])&.round,
        Review.average_richness(params[:alcohol_id])&.round,
        Review.average_fragrance(params[:alcohol_id])&.round
    ]
    @graph = LazyHighCharts::HighChart.new('graph') do |f|
      f.chart(polar: true,type:'area',backgroundColor: '#fff')
      f.pane(size:'80%',backgroundColor: '#000000')
      f.xAxis(categories: genre,tickmarkPlacement:'on')
      f.yAxis(gridLineInterpolation: 'polygon',lineWidth:0,min:0,max:5)
      f.series(name: t('activerecord.attributes.review.evaluation'),data: aData,pointPlacement:'on')
      f.legend(align: 'right',
               verticalAlign: 'top',
               y: 70,
               layout: 'vertical',
               enabled: false)
    end
  end
end
