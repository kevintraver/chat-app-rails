require 'swagger_helper'

describe 'Chatrooms API' do

  path '/chatrooms' do
    get 'List all chatrooms' do
      tags 'Chatrooms'
      produces 'application/vnd.api+json'
      consumes 'application/vnd.api+json'

      response '200', 'success' do
        run_test!
      end
    end

  end

  path '/chatrooms/{id}' do

    get 'Retrieves a chatroom' do
      tags 'Chatrooms'
      produces 'application/vnd.api+json'
      consumes 'application/vnd.api+json'
      parameter name: :id, :in => :path, :type => :integer

      response '200', 'chatroom found' do
        let(:id) { Chatroom.create(topic: 'foo').id }
        run_test!
      end

    end
  end
end