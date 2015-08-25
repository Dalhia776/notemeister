class Note < ActiveRecord::Base

  has_many :tags

  validates_presence_of :title
  validates_presence_of :body

end
