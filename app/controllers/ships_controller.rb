class ShipsController < ApplicationController
	def index
		@ship = Ship.all

		end

		def new 

		end

		def show
				@ship = Ship.find(params[:id])

		end

		def edit
			
		end

		def update
			
		end

		def destroy
			
		end

		def create
				@ship = Ship.new(ship_params)

				if @ship.save
				redirect_to @ship
			else
    			render 'new'
  		end
		end

		def ship_params 
				params.require(:ship).permit(:name, :containers, :location, :user_id)

	end
end
