class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendorsweets

end
