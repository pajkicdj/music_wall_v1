class Comment < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :music

  validates_presence_of :user, :music
  validates :text, presence: true, length: {maximum: 3000}

end