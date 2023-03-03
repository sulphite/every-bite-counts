class Review < ApplicationRecord
  belongs_to :booking
  validates :rating, comparison: { less_than: 6, greater_than: 0 }
end
