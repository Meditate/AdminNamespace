class Post < ActiveRecord::Base
  belongs_to :admin
  has_many :comments
  mount_uploader :image, ImageUploader
  acts_as_votable

end
