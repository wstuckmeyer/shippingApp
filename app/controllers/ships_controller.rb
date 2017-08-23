class ShipsController < ApplicationController
	def index
		  @ship = Ship.all

		end

		def new 
			 @ship = Ship.new

		end

		def show
				# @ship = Ship.find(params[:id])

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
