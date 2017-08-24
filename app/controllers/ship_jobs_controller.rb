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
		@shipjob = ShipJob.create(ship_id: params[:ship_job][:ship_id], job_id: params[:ship_job][:job_id])
				

				if @shipjob.save
					redirect_to jobs_path
				else
					flash[:notice]="Ship has already been added to this job."
					render :new
				end
				
		end

		
end

