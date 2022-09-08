class Sweet < ApplicationRecord
    has_many :vendorsweets
    has_many :vendors, through: :vendorsweets

end
