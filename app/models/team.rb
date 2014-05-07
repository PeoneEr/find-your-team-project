class Team < ActiveRecord::Base
  attr_accessible :title, :description, :owner_id
  validates_uniqueness_of :title
  validates_presence_of :title

  has_many :profiles

  after_save :set_team_id_to_team_owner
  before_destroy :clear_team_id

  def set_team_id_to_team_owner
    owner=Profile.find(self.owner_id)
    self.profiles << owner
  end

  def clear_team_id
    owner=Profile.find(self.owner_id)
    self.profiles.delete(owner)
  end
end

# == Schema Information
#
# Table name: teams
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  owner_id    :integer
#
