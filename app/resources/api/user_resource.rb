class Api::UserResource < JSONAPI::Resource
  has_many :chatrooms
  has_many :messages

  attributes :username

end
