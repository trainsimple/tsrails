class PlacesController < ApplicationController
	def new
		@place = Place.new
	end

	def create
		@place = Place.new(place_params)
		@place.save
		redirect_to new_place_path
	end

	def place_params
		return params.require("place").permit("name", "address")
	end
end
