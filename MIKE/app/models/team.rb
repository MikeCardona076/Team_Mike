class Team < ApplicationRecord
    validates :title, presence: true
    has_many :soldiers
end
