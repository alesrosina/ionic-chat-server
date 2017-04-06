class ReceivedMessagesController < ApplicationController

  def index
    messages = Message.where(receiver_id: params[:user_id])
    render json: messages_to_json(messages)
  end
end
