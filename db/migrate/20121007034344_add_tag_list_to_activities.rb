class AddTagListToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :tag_list, :string
    add_column :tags, :slug, :string
  end
end
