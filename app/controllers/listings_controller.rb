class ListingsController < ApplicationController
    
    def show
    end
    
    def new
        @listing = Listing.new
    end
    
    def create
        @listing = Listing.new(listing_params)
        @listing.save
        redirect_to root_path
    end
    
    private
    
    def listing_params
        params.require(:listing).permit(:title, :description, :city, :state, :zipcode)
    end
    
end
