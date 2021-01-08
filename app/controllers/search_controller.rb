class SearchController < ApplicationController
	def index
		poem_facade = PoemFacade.new
		@poems = poem_facade.search_poems(params[:author])[0..9]
	end
end