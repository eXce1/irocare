class Band < ApplicationRecord
  belongs_to :user
  belongs_to :bridge
  has_many :alerts
  has_many :band_data
end
