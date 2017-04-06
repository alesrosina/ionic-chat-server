class Message < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'

  default_scope { order('created_at DESC') }

  def to_builder
    Jbuilder.new do |message|
      message.(self, :id, :content, :created_at)
      message.sender sender.to_builder
      message.receiver receiver.to_builder
    end
  end

end
