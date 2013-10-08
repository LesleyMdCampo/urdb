class Location < ActiveRecord::Base
  has_many    :showtimes
  belongs_to  :movie
end
