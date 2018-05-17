class MessagesChannel < ApplicationCable::Channel  
  def subscribed
    stream_from 'messages'
  end

  def receive(data)
    user_id = User.where(username: data["username"]).first_or_create.id
    message = Message.new(content: data["content"], user_id: user_id, chatroom_id: data["chatroom_id"])
    if message.save
      ActionCable.server.broadcast 'messages',
        message: message.content,
        user: message.user.username,
        chatroom_id: message.chatroom_id
    end
  end
end  
