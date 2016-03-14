class Music < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :comments

  validates :song_title, presence: true, length: {maximum: 40}
  validates :author, presence: true, length: {maximum: 30}
  validates :url, presence: true, length: {maximum: 2000}


  def like_count
    like_num = self.likes.size
    if like_num == 1
      "#{like_num} like"
    else
      "#{like_num} likes"
    end
  end
  
  def music_user
    userid = self.user_id
    if userid.nil?
      return "no one"
    else
      username = User.find(userid)
      username.name
    end
  end

  def comment_count
    comm_num = self.comments.size
    if comm_num == 1
      "#{comm_num} comment"
    else
      "#{comm_num} comments"
    end
  end

end