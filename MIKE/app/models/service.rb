class Service < ApplicationRecord
    validates :title, presence: true
    has_many :soldiers
    
end
