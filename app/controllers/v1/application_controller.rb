class V1::ApplicationController < ActionController::API

  def messages_to_json(messages)
    messages.to_json(only: [:id, :content, :created_at], include: [{sender: user_allowed_json}, {receiver: user_allowed_json }])
  end

  def users_to_json(users)
    users.to_json(only: [:id, :phone, :created_at])
  end

  private

  def user_allowed_json
    {only: [:id, :phone, :created_at]}
  end
end
