class User < ActiveRecord::Base
   mount_uploader :avatar, AvatarUploader 
   has_many :comments
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, 
                  :remember_me, :username, :avatar, :avatar_cache, :role
  # attr_accessible :title, :body]
  validates :username, presence: true,
                   length: {maximum: 16},
                   uniqueness: true
  
end
