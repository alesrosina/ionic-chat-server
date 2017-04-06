class SentMessagesController < ApplicationController

  def index
    messages = Message.where(sender_id: params[:user_id])
    render json: messages_to_json(messages)
  end

  def create
    message = Message.create(message_params)
    render json: messages_to_json(messages)
  end

  private

  def message_params
    params.require(:message).permit(:content, :sender_id, :receiver_id, sender: [], receiver: [])
  end
end
