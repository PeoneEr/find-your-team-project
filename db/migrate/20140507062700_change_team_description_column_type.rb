class ChangeTeamDescriptionColumnType < ActiveRecord::Migration
  def up
    change_column :teams, :description, :text
  end

  def down
    change_column :teams, :description, :string
  end
end
