class User < ActiveRecord::Base
  has_secure_password
  has_many :recipes
  
  mount_uploader :user_image, UserImageUploader
  
  def role? role
    self.role == role
  end
end
