class RemoveTagIdFromNotes < ActiveRecord::Migration
  def self.up
    remove_column :notes, :tag_id, :integer
  end

end
