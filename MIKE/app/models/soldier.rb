class Soldier < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  belongs_to :service
  belongs_to :team
  belongs_to :barrack
  
end
