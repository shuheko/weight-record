class Weight < ApplicationRecord
  validates :value, presence: true
  validates :date, presence: true
end
