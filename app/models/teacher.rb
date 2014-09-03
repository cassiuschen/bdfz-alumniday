class Teacher < ActiveRecord::Base
  mount_uploader :photo, ThumbUploader
end
