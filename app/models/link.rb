class Link < ActiveRecord::Base
  acts_as_votable
  belongs_to :User
end
