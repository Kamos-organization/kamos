class Search::Alcohol < Search::Base
  ATTRIBUTES = %i(
    name name
  )
  attr_accessor(*ATTRIBUTES)

  def matches
    t = ::Alcohol.arel_table
    results = ::Alcohol.all
    results.where(contains(t[:name], name)) if name.present?
  end

  def self.search_by_category(category_id)
    Alcohol.where("category_id=#{category_id}")
  end

  def self.search_by_ranking

  end

  def self.search_by_producing_area(producing_area_id)
    Alcohol.where("producing_area_id=#{producing_area_id}")
  end

  def self.search_by_new_arrivals
    Alcohol.order('created_at DESC')
  end
end