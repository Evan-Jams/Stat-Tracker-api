class User < ApplicationRecord
  has_many :rounds
  has_many :holes, through: :rounds
end
