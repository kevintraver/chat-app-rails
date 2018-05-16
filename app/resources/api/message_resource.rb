class Api::MessageResource < JSONAPI::Resource
  belongs_to :user
  belongs_to :chatroom
end
