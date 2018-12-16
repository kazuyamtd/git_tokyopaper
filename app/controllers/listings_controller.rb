class ListingsController < ApplicationController
    
    def show
        @listing = Listing.find(params[:id])
    end
    
    def new
        @listing = Listing.new
    end
    
    def create
        @listing = Listing.new(listing_params)
        @listing.user = current_user
        @listing.save
        redirect_to root_path
    end
    
    def edit
        @listing = Listing.find(params[:id])
    end
    
    def update
        @listing = Listing.find(params[:id])
        @listing = Listing.update(listing_params)
        redirect_to root_path
    end
    
    def destroy
        @listing = Listing.find(params[:id])
        @listing = Listing.destroy
        redirect_to root_path
    end
    
    def search
        @listings = Listing.search(params)
    end
    
    def mylistings
        @listings = Listing.where(user: current_user)
    end
    
    private
    def listing_params
        params.require(:listing).permit(:title, :description, :city, :state, :zipcode, :category_id, :subcategory_id)
    end
    
end