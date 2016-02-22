class Music < ActiveRecord::Base
  
  validates :song_title, presence: true, length: {maximum: 40}
  validates :author, presence: true, length: {maximum: 30}
  validates :url, presence: true, length: {maximum: 2000}

end