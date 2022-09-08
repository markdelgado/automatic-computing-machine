class VendorsController < ApplicationController

    def index
        render json: Vendor.all, only:[:id,:name]
    end

    def show
        vendor = Vendor.find_by(id: params[:id])
        if vendor
        render json:vendor.as_json(only:[:id, :name], include:[vendor_sweets: {only:[:id, :name,:price]}])
        else 
            render json: {error: 'Vendor Not Found'}, status: :not_found
    end
end
end
