class CountryController < ApplicationController
  def all_states
  	@states = State.all
  end

  def top_five_pop
  	@toppop = State.order(population: :desc).limit(5)
  end

  def top_five_area
  	@toparea = State.order(area: :desc).limit(5)
  end
end
