class Url < ActiveRecord::Base
  attr_accessible :appendage, :long_url, :counter
  validates_uniqueness_of :appendage, :long_url
  validates_presence_of  :long_url
  before_save :set_appendage
  
  def random_letters
    appendage = (0...6).map{97.+(rand(25)).chr}.join
    if Url.find_by_appendage(appendage) != nil
      random_letters
    else
      return appendage
    end
  end
  
  def set_appendage
    self.appendage ||= random_letters
  end
  
  def increment_counter!
    self.increment(:counter)
    self.save
  end
end
