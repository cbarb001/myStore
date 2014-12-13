class StoreController < ApplicationController
	def show
		@products = Product.order(:title)
	end

end