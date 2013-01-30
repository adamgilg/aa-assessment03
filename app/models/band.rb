class Band < ActiveRecord::Base
  has_many :artists
  has_many :recordings

  # has_many :songs, :through => :recordings

  def self.multiple_recordings
    #check if song has same song id as recording
    #multiple times?
    bands_with_recordings = self.includes(:recordings => :songs)

    # recording_count = 0
    #none of this makes any sense. writing code with a fever isn't the most productive
    # bands_with_recordings.each do |band|
    #   if band.recordings.song_id == band.songs.id
    #     recording_count += 1
    #   end
    #   puts "#{band.name}"
    # end


  end
end