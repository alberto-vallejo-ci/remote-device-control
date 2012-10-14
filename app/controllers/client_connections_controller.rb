class ClientConnectionsController < ApplicationController
  respond_to :html

  def index
  end

  def create
     Pusher['devices'].trigger!('new_connection', { id: params[:id], name: "Device #{params[:id]}", device_class: 'on_hold'}) 
     redirect_to client_connection_path(params[:id])
  end

  def show
    @device_id = params[:id]
    respond_with @device_id
  end
end
