class Recording < ActiveRecord::Base
  belongs_to :band
  belongs_to :song
end