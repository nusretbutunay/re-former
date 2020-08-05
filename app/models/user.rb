class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 5 }
  validates :email, presence: true, uniqueness: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
  validates :password, presence: true, length: { in: 4..12 }
end
