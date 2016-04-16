class User < ApplicationRecord
  validates :name, :login, presence: true

  has_many :comments
end
