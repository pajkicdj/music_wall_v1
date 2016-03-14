class Like < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :music

  validates_presence_of :user, :music

end