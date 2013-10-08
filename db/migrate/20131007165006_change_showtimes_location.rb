class ChangeShowtimesLocation < ActiveRecord::Migration
  def change
    change_table "showtimes" do |t|
      t.remove        :location
      t.remove        :movie_id
      t.change        :time, :datetime
      t.references    :location
    end
  end
end
