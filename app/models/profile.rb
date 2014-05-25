class Profile < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  attr_accessible :email, :password, :remember_me, :nickname, :skype, :avatar, :vk, :steam

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>"  }, :default_url => "/images/:style/missing.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates_uniqueness_of :nickname

  belongs_to :team
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
#  avatar_file_name       :string(255)
#  avatar_content_type    :string(255)
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#
