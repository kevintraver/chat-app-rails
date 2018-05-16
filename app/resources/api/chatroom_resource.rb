class Api::ChatroomResource < JSONAPI::Resource
  has_many :users
  has_many :messages

  attribute :topic
end
