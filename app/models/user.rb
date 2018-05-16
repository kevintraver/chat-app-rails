class User < ApplicationRecord
  has_many :messages
  has_many :chatrooms, through: :messages

  validates :username, presence: true, uniqueness: true

  def appear
    self.update(online: true)
  end

  def disappear
    self.update(online: false)
  end
end
