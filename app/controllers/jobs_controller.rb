class JobsController < ApplicationController
	
		def index
			

		end

		def new 
			Job.new

		end

		def show
			@job = Job.find(params[:id])
			@contains = @job.containersNeeded
			@total = 0 
			@final = 0
			


		end

		def edit

			@job = Job.find(params[:id])


			
		end

		def update
    	 # @job = Job.find(params[:id])
 

    if @job.update(job_params)
      		redirect_to @job
    else
      		render 'show'
    end

  end

		def destroy
		   # @job = Job.find(params[:id])
		   @job.destroy
		 
		  		redirect_to jobs_path
		end

		def create
				Job.create(description: params[:job][:description], name: params[:job][:name], origin: params[:job][:origin], destination: params[:job][:destination], cost: params[:job][:cost], containersNeeded: params[:job][:containersNeeded], user_id: current_user.id)

				redirect_to jobs_path

  		end
		

		
end

