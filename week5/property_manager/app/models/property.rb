class Property < ApplicationRecord
    belongs_to :landlord
    has_many :repairs
end
