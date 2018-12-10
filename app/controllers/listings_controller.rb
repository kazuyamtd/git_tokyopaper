class ListingsController < ApplicationController
    
    def show
        @listing = Listing.find(params[:id])
    end
    
    def new
        @listing = Listing.new
    end
    
    def create
        @listing = Listing.new(listing_params)
        @listing.save
        redirect_to root_path
    end
    
    def search
        @listing = Listing.search(params)
    end
    
    private
    def listing_params
        params.require(:listing).permit(:title, :description, :city, :state, :zipcode, :category_id, :subcategory_id)
    end
    
end