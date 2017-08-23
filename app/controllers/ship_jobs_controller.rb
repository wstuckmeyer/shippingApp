class ShipJobsController < ApplicationController
	def index

		end

		def new 

		end

		def show
				# @shipjob = Shipjob.find(params[:id])

		end

		def edit
			
		end

		def update
			
		end

		def destroy
			
		end

		def create
				ShipJob.create(ship_id: params[:ship_job][:ship_id], job_id: params[:ship_job][:job_id])
				redirect_to jobs_path
				
		end

		
end

