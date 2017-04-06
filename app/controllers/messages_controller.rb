class MessagesController < ApplicationController

  def index
    messages = Message.where('receiver_id=? OR sender_id=?', params[:user_id], params[:user_id])
    render json: messages_to_json(messages)
  end
end
