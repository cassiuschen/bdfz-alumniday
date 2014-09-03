class Event < ActiveRecord::Base
  mount_uploader :thumb, ThumbUploader

  def vote
    self.vote += 1
    self.vote.save
  end
end
