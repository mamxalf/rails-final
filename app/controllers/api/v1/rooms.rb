# frozen_string_literal: true

class Api::V1::Rooms < Grape::API
  include Api::V1::Defaults

  resource :rooms do
    desc 'Get All Rooms'
    get '/', serializer: RoomSerializer do
      rooms = Room.all
      RoomSerializer.new(rooms).serializable_hash
    end

    desc 'Get Room by ID'
    params do
      requires :id, type: String, desc: 'ID Rooms'
    end
    get ':id' do
      Room.find_by(id: params[:id])
    end
  end
end
