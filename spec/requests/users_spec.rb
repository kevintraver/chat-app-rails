require 'swagger_helper'

describe 'Users API' do

  path '/users' do
    get 'List all users' do
      tags 'Users'
      produces 'application/vnd.api+json'
      consumes 'application/vnd.api+json'

      response '200', 'success' do
        run_test!
      end
    end

  end

  path '/users/{id}' do

    get 'Retrieves a user' do
      tags 'Users'
      produces 'application/vnd.api+json'
      consumes 'application/vnd.api+json'
      parameter name: :id, :in => :path, :type => :integer

      response '200', 'user found' do
        let(:id) { User.create(username: 'foo').id }
        run_test!
      end

    end
  end
end