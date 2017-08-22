class ShipJobsController < ApplicationController
	def index

		end

		def new 

		end

		def show
				@shipjob = Shipjob.find(params[:id])

		end

		def edit
			
		end

		def update
			
		end

		def destroy
			
		end

		def create
				@shipjob = Shipjob.new(shipjob_params)

				if @shipjob.save
				redirect_to @ship
			else
    			render 'new'
  		end
		end

		def shipjob_params 
				params.require(:shipjob).permit(:ship_id, :job_id)

	end
end

