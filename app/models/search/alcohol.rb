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
end