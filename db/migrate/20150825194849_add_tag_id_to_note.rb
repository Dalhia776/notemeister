class AddTagIdToNote < ActiveRecord::Migration
  def change
    add_column :notes, :tag_id, :integer
  end
end
