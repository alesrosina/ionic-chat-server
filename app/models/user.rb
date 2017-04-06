class User < ApplicationRecord
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
  has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id'

  def to_builder
    Jbuilder.new do |user|
      user.(self, :phone, :created_at)
    end
  end
end
