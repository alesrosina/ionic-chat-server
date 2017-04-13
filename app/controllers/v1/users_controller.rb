class V1::UsersController < V1::ApplicationController

  def index
    receivers = Message.where(receiver_id: params[:user_id]).pluck(:sender_id)
    senders = Message.where(sender_id: params[:user_id]).pluck(:receiver_id)
    user_ids = receivers << senders
    users = User.where(id: user_ids.flatten.uniq)

    render json: users_to_json(users)
  end

  def create
    user = User.create(user_params)
    render json: users_to_json(user)
  end

  def show
    user = User.find params[:id]
    render json: users_to_json(user)
  end

  def search
    user = User.find_by phone: params[:phone]
    render json: users_to_json(user)
  end

  private

  def user_params
    params.require(:user).permit(:id, :phone)
  end
end
