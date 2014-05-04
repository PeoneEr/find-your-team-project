class Team < ActiveRecord::Base
  # attr_accessible :title, :body
end

# == Schema Information
#
# Table name: teams
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
