class SentMessagesController < MessagesController

  def index


  end

  def create

  end

  def show

  end

  private

  def message_params
    params.require(:message).permit(:content, :sender_id, :receiver_id, :sender, :receiver)
  end
end
