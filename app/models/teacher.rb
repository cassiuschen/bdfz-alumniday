class Teacher < ActiveRecord::Base
  mount_uploader :photo, ThumbUploader
  has_many :courses
end
