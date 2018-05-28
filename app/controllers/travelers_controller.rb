class TravelersController < ApplicationController
    def show
        @traveler = Traveler.find(params[:id])
    end 

    def new
        @traveler = Traveler.new
    end

    def create
        @traveler = Traveler.create(strong_params)
        redirect_to traveler_path(@traveler)
    end

    def edit 
        @traveler = Traveler.find(params[:id])
    end

    def update
        @traveler = Traveler.find(params[:id])
        @traveler.update(strong_params)
        redirect_to traveler_path(@traveler)
    end 

    def destroy

    end 

    private

    def strong_params
        params.require(:traveler).permit(:first_name, :last_name, :dob, :hometown)
    end 
end
