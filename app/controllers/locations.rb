class LocationsController < ApplicationController

	def index
		@locations = Location.all
	end

	def show
		id = params[:id]
		@location = Location.find(id)
	end

	def new
		@location = Location.new
	end

	def create
		@location = Location.new(location_params)
		@location.save
		
		redirect_to root_path
	end

	def edit
		id = params[:id]
		@location = Location.find(id)
	end

	def update
		id = params[:id]
		@location = Location.find(id)
		@location.update(location_params)

		redirect_to root_path
	end

	def destroy
		id = params[:id]
		@location = Location.find(id)
		@location.destroy

		redirect_to root_path
	end

	def location_params
		params.require(:location).permit(:name, :picture_url, :review)
	end
end