class ChangeNameIdToNoteIdTaggings < ActiveRecord::Migration
  def change
    rename_column :taggings, :name_id, :note_id
  end
end
