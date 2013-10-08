class Movie < ActiveRecord::Base
  has_many :locations

  def snippet
    self.description.truncate 50
  end
end
