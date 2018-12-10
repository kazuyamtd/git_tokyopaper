class CategoriesController < ApplicationController
    
    def index
        @categories = Category.all
        @community = @categories[0]
        @event = @categories[1]
        @service = @categories[2]
        @housing = @categories[3]
        @sale = @categories[4]
        @job = @categories[5]
    end
    
    def show
        @listings = Listing.where(category_id: params[:id])
    end
    
end
