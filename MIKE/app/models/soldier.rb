class Soldier < ApplicationRecord
  belongs_to :user
  belongs_to :Service
  belongs_to :Team
  belongs_to :Barrack
  
end
