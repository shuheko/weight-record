class Weight < ApplicationRecord
  def self.chart_date
    order(date: :asc).pluck('date', 'value').to_h
  end
  validates :value, presence: true
  validates :date, presence: true

end
