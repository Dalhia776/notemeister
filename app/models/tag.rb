class Tag < ActiveRecord::Base

  has_many :taggings
  has_many :notes, :through => :taggings

  validates_presence_of :name

  def self.counts
    self.select("name, count(taggings.tag_id) as count").joins(:taggings).group("taggings.tag_id")
  end
  
end
