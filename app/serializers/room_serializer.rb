# frozen_string_literal: true

class RoomSerializer
  include JSONAPI::Serializer

  set_type :room  # optional
  set_id :id # optional
  attributes :name, :code
  attribute :nameWithCode do |object|
    "#{object.name} (#{object.code})"
  end
end
