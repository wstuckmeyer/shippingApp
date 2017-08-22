class JobsController < ApplicationController
		def index
			@job = Job.all

		end

		def new 
			@job = Job.new

		end

		def show
			@job = Job.find(params[:id])

		end

		def edit
			@job = Job.find(params[:id])
			
		end

		def update
    	 @job = Job.find(params[:id])
 
    if @job.update(job_params)
      		redirect_to @job
    else
      		render 'edit'
    end
  end

		def destroy
		   @job = Job.find(params[:id])
		   @job.destroy
		 
		  		redirect_to jobs_path
		end

		def create
				@job = Job.new(job_params)

				if @job.save
					redirect_to @job
			else
    			render 'new'
  		end
		end

		def job_params 
				params.require(:job).permit(:name, :description, :origin, :destination, :cost, :containersNeeded)

	end
end

