class User < ApplicationRecord
  has_many :rounds
  has_secure_password(attribute = :password, validations: true)
end
