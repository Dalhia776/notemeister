class Note < ActiveRecord::Base

  has_many :taggings
  has_many :tags, :through => :taggings

  validates_presence_of :title
  validates_presence_of :body


  def all_tags=(names)
  self.tags = names.split(",").collect do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
  self.tags.collect(&:name).join(", ")
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).notes
  end


end
