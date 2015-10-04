class User < ActiveRecord::Base
  has_secure_password
  has_many :adds
 EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
 validates :first_name, :last_name, :email, :password, presence: true
 validates :email, presence: true, format: {with: EMAIL_REGEX}, uniqueness: {case_senstive:false}
end
