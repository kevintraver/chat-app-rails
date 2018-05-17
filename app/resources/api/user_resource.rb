class Api::UserResource < JSONAPI::Resource
  has_many :chatrooms
  has_many :messages

  attributes :username, :online

  filter :online,
    verify: ->(values, context) {
      return ActiveModel::Type::Boolean.new.cast(values[0])
    },
    apply: -> (records, value, options) {
      if value
        records.where(online: true)
      else
        records.where(online: false)
      end
    }

end
