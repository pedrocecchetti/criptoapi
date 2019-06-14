class CriptoInfo < ApplicationRecord
    validates :name, presence: true
    validates :symbol, presence: true
    validates :last_updated, presence: true
    validates :price, presence: true
end
