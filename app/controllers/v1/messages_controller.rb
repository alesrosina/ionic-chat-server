class V1::MessagesController < V1::ApplicationController

  def index
    messages = Message.where('receiver_id=? OR sender_id=?', params[:user_id], params[:user_id])
    render json: messages_to_json(messages)
  end

  def show
    messages = Message.where('(sender_id=:sender_id AND receiver_id=:receiver_id) OR (sender_id=:receiver_id AND receiver_id=:sender_id)',
                             { sender_id: params[:user_id], receiver_id: params[:id] })
    render json: messages_to_json(messages)
  end

  def create
    message = Message.create(message_params)
    render json: messages_to_json(message)
  end

  private

  def message_params
    params.require(:message).permit(:content, :sender_id, :receiver_id, sender: [], receiver: [])
  end
end
