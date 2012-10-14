class MessageController < ApplicationController
  def create
    Pusher['admin_messages'].trigger!('new_message', { id: params[:id], message: params[:message], action: params[:type], device_class: 'on_hold'}) 
    redirect_to root_path
  end
end