class Post < ActiveRecord::Base
  belongs_to :admin
  acts_as_votable
end
