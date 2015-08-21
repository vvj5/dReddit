class Link < ActiveRecord::Base
  acts_as_votable
  belongs_to :User
  validates :user_id, presence: true

  @link = Link.new(:title => 'my link!')
  @link.save

  @link.liked_by @user
  @link.votes_for.size # => 1
end


