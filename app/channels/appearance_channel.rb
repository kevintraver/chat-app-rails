class AppearanceChannel < ApplicationCable::Channel
  def subscribed
    User.find_by_username(params['username']).appear
    stream_from 'appearances'
    ActionCable.server.broadcast 'appearances',
                                 user: params['username'],
                                 online: true
  end
  
  def unsubscribed
    User.find_by_username(params['username']).disappear
    ActionCable.server.broadcast 'appearances',
                                 user: params['username'],
                                 online: false
  end

end