class ClientConnectionsController < ApplicationController
  def index
    num = rand(1..100)
    Pusher['messages'].trigger!('new_device', { id: num, name: "ipad#{num}", event: 'addDevice' })
  end
end
