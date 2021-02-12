class User < ApplicationRecord
  validates :name, presence: true, length: {maximum:15}
 
  VALID_PASSWORD_REGEX=/\A[a-zA-Z0-9]+\z/
  validates :password, length: {minimum:8, maximum:32}
  validates :password, format: {with: VALID_PASSWORD_REGEX}
  
  
  VALID_EMAIL_REGEX=/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, format: {with: VALID_EMAIL_REGEX}
  validates :email, presence: true
  
  has_secure_password
end

#valid_**_regexはコピペ