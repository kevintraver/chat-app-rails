require 'rails_helper'

RSpec.describe Chatroom, type: :model do
  it { should validate_presence_of(:topic) }
  it { should have_many(:messages) }
  it { should have_many(:users) }
end
