class WorkshopsController < ApplicationController

	def index
		@workshops = Workshop.all
	end

	def show
		@workshop = Workshop.find(params[:id])
		@applicants = @workshop.applicants
	end

end