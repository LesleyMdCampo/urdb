class Movie < ActiveRecord::Base
  has_many :showtimes
  has_many :roles
  has_many :stars, through: :roles

  validates :title, presence: true

  def rotten_finder
    RottenMovie.find(title: title, limit: 1)

  end
  
  def audience_rating
  	if self.rotten_finder != []
  		self.rotten_finder.ratings.audience_score 
  	else
  		return nil
  	end
  end

  def snippet
    description.truncate 50
  end

  def self.average_rating
  	#get all movie scores
  	scores = self.all.collect do |movie|
  	  movie.audience_rating
  	end
  	scores.compact!
  	#add all movie scores together
  	sum = scores.sum
  	#divide by number of movies
  	if  scores.length == 0
  		return nil
  	else
  		average = sum/scores.length
  		return average
  	end

  	
  end
end


