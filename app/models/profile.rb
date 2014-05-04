class Profile < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :remember_me, :nickname
end

# == Schema Information
#
# Table name: profiles
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  nickname               :string(255)
#  vk                     :string(255)
#  twitter                :string(255)
#  fb                     :string(255)
#  skype                  :string(255)
#  steam                  :string(255)
#  team_id                :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
