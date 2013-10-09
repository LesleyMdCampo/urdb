class Movie < ActiveRecord::Base
  has_many :showtimes
  has_many :roles
  has_many :stars, through: :roles

  validates :title, presence: true

  def rotten_finder
    RottenMovie.find(title: title, limit: 1)
  end

  def audience_rating
    rotten_finder.ratings.audience_score unless rotten_finder.empty?
  end

  def self.average_rating
    movie_scores = []

    self.all.each do |movie|
      movie_scores << movie.audience_rating if movie.audience_rating
    end

    if movie_scores.length > 0
      movie_scores.inject(:+).to_f / movie_scores.length
    else
      nil
    end

  end

  def snippet
    description.to_s.truncate 50
  end



end
