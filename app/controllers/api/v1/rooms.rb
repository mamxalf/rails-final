# frozen_string_literal: true

class Api::V1::Rooms < Grape::API
  include Api::V1::Defaults
  helpers Api::V1::Helpers

  resource :rooms do
    desc 'Get All Rooms'
    get do
      rooms = Room.all
      results(
        message:    'Rooms list fetched successfully',
        status:     'success',
        data:       rooms,
        serializer: RoomSerializer
      )
    end

    desc 'Get Room by ID'
    params do
      requires :id, type: String, desc: 'ID Rooms'
    end
    get ':id' do
      room = Room.find_by(id: params[:id])
      results(
        message:    'Room fetched successfully',
        status:     'success',
        data:       room,
        serializer: RoomSerializer
      )
    end

    desc 'Create Room'
    params do
      requires :name, type: String, desc: 'Room Name'
      requires :code, type: String, desc: 'Code Room'
    end
    post do
      new_room = Room.new(params)
      unless new_room.save
        'Error!'
      end

      results(
        message:    'Room created successfully',
        status:     'success',
        data:       new_room,
        serializer: RoomSerializer
      )
    end
  end
end
