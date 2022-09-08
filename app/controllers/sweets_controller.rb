class SweetsController < ApplicationController
    def index
        render json: Sweet.all, only:[:id, :name]
    end

    def show 
        sweet = Sweet.find_by(id: params[:id])
        if sweet
            render json: sweet
        else 
            render json: {error: 'Sweet Not Found'}, status: :not_found
end
    end
end
