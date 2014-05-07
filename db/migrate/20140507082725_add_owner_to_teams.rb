class AddOwnerToTeams < ActiveRecord::Migration
  def up
    add_column :teams, :owner_id, :integer
  end

  def down
    remove_column :teams, :owner_id
  end
end
