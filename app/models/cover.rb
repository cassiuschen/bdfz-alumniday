class Cover < ActiveRecord::Base
  mount_uploader :image, CoverUploader

  def to_js
    {
      image: image.url,
      title: "<div class='slide-content'>#{title}</div>",
      thumb: '',
      url: ''
    }
  end
end
