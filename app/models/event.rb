class Event < ActiveRecord::Base
  mount_uploader :thumb, ThumbUploader

  def sym_to_class
    {
      "0" => '',
      "1" => 'sport',
      "2" => 'course',
      "3" => 'show'
    }
  end

  def vote
    self.vote += 1
    self.save
  end
end
