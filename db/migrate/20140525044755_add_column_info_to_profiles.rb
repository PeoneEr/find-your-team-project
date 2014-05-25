class AddColumnInfoToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :info, :text
  end
end
