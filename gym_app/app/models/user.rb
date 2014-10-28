class User < ActiveRecord::Base
  has_secure_password
  validates :email, :email_format => {:message => 'Not a valid email format'}
end
