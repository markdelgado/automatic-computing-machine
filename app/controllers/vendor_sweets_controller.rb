class VendorSweetsController < ApplicationController

def create 
    v = VendorSweet.create!(vendor_params)
    if v.valid?
        render json: v.as_json(only:[:id, :price], include:[sweet:{only:[:name]}])
     
    else 
        render json: {errors:'error'}
    end
end



def destroy
    v = VendorSweet.find_by(id: params[:id])
    if v
    v.destroy
    render json: {}
    else 
        render json: {error: 'VendorSweet not found'}, status: :not_found
    end
end



private

def vendor_params
    params.permit(:price, :vendor_id, :sweet_id)
end


end
