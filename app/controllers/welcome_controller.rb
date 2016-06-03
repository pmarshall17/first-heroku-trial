class WelcomeController < ApplicationController
  def index
  	#bad slow response time
  	# @animals = Animal.all

  	#best practice -fast response time
  	@animals = Animal.paginate(page: params[:page], 
  																		per_page: 10)
  end
end
