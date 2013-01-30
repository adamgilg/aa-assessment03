class Artist < ActiveRecord::Base
  belongs_to :band
  has_many :songs
  has_many :recordings, :through => :songs

  def self.find_songs
    # artist_with_songs = self.includes(:songs)
    # all_songs = {}
    # artist_with_songs.each do |artist_song|
    total_songs = self
      .select("artists.*, songs.*")
      .joins(:songs)
      .group("artist_id")

    # song_hash = {}

    # total_songs.each do |el|
    #   song_hash[el.artists.name] = [songs.name]
    # end

  end
end