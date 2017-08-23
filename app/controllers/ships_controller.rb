class ShipsController < ApplicationController
	def index
		  @ship = Ship.all

		end

		def new 
			 @ship = Ship.new

		end

		def show
				@ship = Ship.find(params[:id])

		end

		def edit
				@ship = Ship.find(params[:id])
			
		end

		def update
			  @ship= Ship.find(params[:id])
			 
			  if @ship.update(ship_params)
			    redirect_to @ship
			  else
			    render 'show'
 		 end
	end

			
		def destroy
			  @ship = Ship.find(params[:id])
			  @ship.destroy
			 
			  redirect_to ships_path
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
