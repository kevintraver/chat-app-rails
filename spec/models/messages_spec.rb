require 'rails_helper'

RSpec.describe Message, type: :model do
  it { should belong_to(:user) }
  it { should validate_presence_of(:user) }

  it { should belong_to(:chatroom) }
  it { should validate_presence_of(:chatroom) }
end
