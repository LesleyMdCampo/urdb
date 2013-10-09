class Movie < ActiveRecord::Base
  has_many :showtimes
  has_many :roles
  has_many :stars, through: :roles

  def snippet
    description.to_s.truncate 50
  end

  def rating
    mov = RottenMovie.find(title: title, limit: 1)
    mov.ratings.audience_score
  end
end
