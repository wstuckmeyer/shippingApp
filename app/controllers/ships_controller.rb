class ShipsController < ApplicationController
	def index

		end

		def new 

		end

		def show
				# @ship = Ship.find(params[:id])

		end

		def edit
			
		end

		def update
			
		end

		def destroy
			
		end

		def create
				# @ship = Ship.new(ship_params)
				Ship.create(name: params[:ship][:name], containers: params[:ship][:containers], location: params[:ship][:location], user_id: current_user.id)
			# 	if @ship.save
			# 	redirect_to @ship
			# else
   #  			render 'new'
  	# 	end
  		redirect_to ships_path
		end

		def ship_params 
				params.require(:ship).permit(:name, :containers, :location, :user_id)

	end
end
