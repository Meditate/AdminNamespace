class Post < ActiveRecord::Base
  belongs_to :admin
  mount_uploader :image, ImageUploader
  acts_as_votable

end
