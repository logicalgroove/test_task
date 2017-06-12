class TrainStation < ApplicationRecord
  validates :name, :address, presence: true
end
