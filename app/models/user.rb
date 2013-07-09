class User < ActiveRecord::Base
  has_secure_password
  has_many :recipes

  def role? role
    self.role == role
  end
end
