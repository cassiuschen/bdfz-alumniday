class Course < ActiveRecord::Base
  belongs_to :teacher

  def vote
    self.vote += 1
    self.vote.save
  end
end
