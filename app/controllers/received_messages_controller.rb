class ReceivedMessagesController < MessagesController

  def index


  end

  def create

  end

  def show

  end

  protected

  def message_direction
    :received
  end

  private

  def message_params
    params.require(:message).permit(:content, :sender_id, :receiver_id, :sender, :receiver)
  end
end
