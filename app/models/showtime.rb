class Showtime < ActiveRecord::Base
  belongs_to :location

  def time=(value)
    self[:time] = Chronic.parse(value)
  end
end
