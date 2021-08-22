# frozen_string_literal: true

class Api::V1::Rooms < Grape::API
  include Api::V1::Defaults

  resource :rooms do
    desc 'Get All Rooms'
    get do
      rooms = Room.all
      {
        message: 'Rooms list fetched successfully',
        status: 'success',
        data: ActiveModelSerializers::SerializableResource.new(rooms, each_serializer: RoomSerializer)
      }
    end

    desc 'Get Room by ID'
    params do
      requires :id, type: String, desc: 'ID Rooms'
    end
    get ':id' do
      Room.find_by(id: params[:id])
    end

    desc 'Create Room'
    params do
      optional :name, type: String, desc: 'Room Name'
      optional :code, type: String, desc: 'Code Room'
    end
    post do
      Room.new(params)
    end
  end
end
