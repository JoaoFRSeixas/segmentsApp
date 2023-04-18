class IncludeNameToTags < ActiveRecord::Migration[7.0]
  def change
    add_column :tags, :name, :text

  end
end
