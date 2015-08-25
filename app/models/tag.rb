class Tag < ActiveRecord::Base

  belongs_to :note

  validates_presence_of :name


end
