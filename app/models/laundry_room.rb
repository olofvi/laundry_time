class LaundryRoom < ApplicationRecord
  acts_as_bookable time_type: :fixed
  schedule: :text
end