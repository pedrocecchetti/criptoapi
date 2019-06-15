class CriptoInfo < ApplicationRecord
    validates :name, presence: true
    validates :symbol, presence: true
    validates :last_updated, presence: true
    validates :price, presence: true
    validates :api_id, presence: true
end
